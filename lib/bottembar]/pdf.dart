import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class pdfop extends StatefulWidget {
  const pdfop({super.key});

  @override
  State<pdfop> createState() => _pdfopState();
}

class _pdfopState extends State<pdfop> {

  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<String?> pdfup(String fileName, File file) async {
    //for store file name and path
    final refrece = FirebaseStorage.instance.ref().child("pdf/$fileName.pdf");
    //upload pdf in firestore
    final uploadeTask = refrece.putFile(file);

    await uploadeTask.whenComplete(() {});

    //using awail becouse only get data in String
    final downloadlink  = await refrece.getDownloadURL();

      return downloadlink;
  }

  void pickFile ()async{
  //  final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    final pickedfile = await FilePicker.platform.pickFiles(
      type:FileType.custom,
      allowedExtensions: ['pdf'],
    );
    if (pickedfile != null){

       String fileName =pickedfile.files[0].name;
       File file =  File(pickedfile.files[0].path!);
     final downloadlink = await pdfup(fileName, file);

     await firebaseFirestore.collection("pdfs").add({
       "name": fileName,
       "url": downloadlink,
     });
     print("pdf uploaded successfully");
    }

  }


  // void _pickFile() async {
  //
  //   final result = await FilePicker.platform.pickFiles(allowMultiple: false);
  //
  //   if (result == null) return;
  //
  //   print(result.files.first.name);
  //   print(result.files.first.size);
  //   print(result.files.first.path);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("PDFs"),
      ),

      body: Container(

        color: Colors.blue.shade100,

      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.upload_file),
        onPressed: pickFile ,
      ),
    );
  }
}
