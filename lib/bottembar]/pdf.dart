import 'dart:async';
import 'dart:convert';
import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class pdfop extends StatefulWidget {
  const pdfop({super.key});

  @override
  State<pdfop> createState() => _pdfopState();
}

class _pdfopState extends State<pdfop> {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  List<Map<String, dynamic>> pdfdata = [];

  Future<String?> pdfup(String fileName, File file) async {
    //for store file name and path
    final refrece = FirebaseStorage.instance.ref().child("pdf/$fileName.pdf");
    //upload pdf in firestore
    final uploadeTask = refrece.putFile(file);

    await uploadeTask.whenComplete(() {});

    //using awail becouse only get data in String
    final downloadlink = await refrece.getDownloadURL();

    return downloadlink;
  }

  void pickFile() async {
    //  final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    final pickedfile = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    if (pickedfile != null) {
      String fileName = pickedfile.files[0].name;
      File file = File(pickedfile.files[0].path!);
      final downloadlink = await pdfup(fileName, file);

      await firebaseFirestore.collection("pdfs").add({
        "name": fileName,
        "url": downloadlink,
      });
      print("pdf uploaded successfully");
    }
  }

  void getpdfs() async {
    final results = await firebaseFirestore.collection("pdfs").get();

    pdfdata = results.docs.map((e) => e.data()).toList();

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getpdfs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("PDFs"),
      ),
      body: Container(
        color: Colors.teal.shade200,
        child: ListView.builder(
            itemCount: pdfdata.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material( borderRadius: BorderRadius.circular(20),

                    color: Colors.white,
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => pdfviewerscreen(
                                    pdfurl: pdfdata[index]["url"])),
                          );
                        },

                        child: Padding(

                          padding: const EdgeInsets.all(8.0),

                          child: Padding(

                            padding: const EdgeInsets.all(8.0),

                            child: Column(
                              children: [
                                ListTile(
                                  leading: Image.asset(
                                    "assets/pdflogo.png",
                                    height: 50,
                                    width: 50,
                                  ),
                                  trailing:  IconButton(
                                    onPressed: () {
                                      showDialog(context: context,
                                          builder: (context)=>const downloadpdf() );
                                    },
                                    icon: Icon(
                                      Icons.download,color: Colors.green,
                                    ),
                                  ),
                                  title: Text(
                                    pdfdata[index]['name'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ));
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.upload_file),
        onPressed: pickFile,
      ),
    );
  }
}

class downloadpdf extends StatefulWidget {
  const downloadpdf({super.key});

  @override
  State<downloadpdf> createState() => _downloadpdfState();
}

class _downloadpdfState extends State<downloadpdf> {

  Future<String>getpath(String filename)async{
    final dir =await getApplicationDocumentsDirectory();
    return "${dir.path}/$filename";
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startdownload();
  }

  Dio dio = Dio();
  double progress = 0.0 ;

  void startdownload()async{

   const String downurl = "url";

  const String filename = "name";

  String path = await getpath(filename);
  await dio.download(downurl,path,onReceiveProgress: (recivdBytes,totalBytes){
    setState(() {
      progress = recivdBytes / totalBytes;
    });
        print(progress);
  },
  deleteOnError: true,
  ).then((_){
    Navigator.pop(context);
  });

  }

  @override
  Widget build(BuildContext context) {
        String downloadinprogress = (progress =100).toInt().toString();
    return AlertDialog(
      backgroundColor: Colors.blueGrey,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator.adaptive(),
          const  SizedBox(height: 20,),
          Text("Download : $downloadinprogress%",
          style: TextStyle  (color: Colors.white,fontSize: 17),)

        ],
      ),
    );
  }
}


class pdfviewerscreen extends StatefulWidget {
  final String pdfurl;
  const pdfviewerscreen({super.key, required this.pdfurl});

  @override
  State<pdfviewerscreen> createState() => _pdfviewerscreenState();
}

class _pdfviewerscreenState extends State<pdfviewerscreen> {

  PDFDocument? document;

  void initialisepdf() async {
    document = await PDFDocument.fromURL(widget.pdfurl);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialisepdf();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: document != null
          ? PDFViewer(
              document: document!,
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
