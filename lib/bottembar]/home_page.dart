import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'imagedetial.dart';

class home_page extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<home_page> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<Map<String, dynamic>> imageList = [];
   List<Widget> imageWidgets = [];


  late Future<List<String>> futureimages;

  Future<List<String>> fetchimageurls() async {
    List<String>imageurls = [];
    final StorageRef = FirebaseStorage.instance.ref("images");
    final listresult = await StorageRef.listAll();
    for (var item in listresult.items) {
      final url = await item.getDownloadURL();
      imageurls.add(url);
    }
    return imageurls;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    futureimages = fetchimageurls();
    _pageController.addListener(() {
      setState(() {
        _currentIndex = _pageController.page!.round();
      });
    });


    //fetchImages();
  }
  PageController _pageController = PageController();
  int _currentIndex = 0;




  int likes= 123;
  bool liked =true;
  String posturl = "https://firebasestorage.googleapis.com/v0/b/crud1-5ff73.appspot.com/o/posts%2Fbmw-m3-touring-g81-mpp-03-wallpaper.jpg?alt=media&token=acdf1684-db46-4bf4-b736-eca793d0973d";

  Widget post() {
    return Card(
      color: Colors.cyan.shade100,
      child:  Padding(padding: EdgeInsets.all(10),
        child:Column(
        children: [
          Text("BMW ",style: TextStyle(fontSize: 20),),
          Image.network( posturl,
          width: MediaQuery.of(context).size.width/100*80,),
          Padding(
            padding: const EdgeInsets.only(top:5,left: 15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: (){
                    setState(() {
                      liked =! liked;
                      if (liked){
                        likes += 1;
                      }
                      else{
                        likes -= 1;
                      }
                    });
                  }, icon:liked == true ?  const Icon(Icons.favorite ,color: Colors.red,size: 30,) : Icon(Icons.favorite_border,color: Colors.black,size: 30,),),
                ),
                Text(likes.toString() + "Like"),

                // Padding(
                //   padding: const EdgeInsets.only(left: 50),
                //   child: IconButton(
                //     onPressed: (){
                //       setState(() {
                //         liked =! liked;
                //       });
                //     }, icon: Icon(Icons.comment_outlined) ),
                // ),

              ],
            ),
          ),

        ],
      ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
            Column(
          children: [
            FutureBuilder(future: futureimages, builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              final imagesurl = snapshot.data;

              return CarouselSlider.builder(

                itemCount: imagesurl!.length,
                itemBuilder: (context, index, realIndex) {
                  return Row(
                    children: [
                      CachedNetworkImage(
                        width: 300,
                        imageUrl: imagesurl![index],
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            Icon(Icons.error),
                      ), AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                       //   margin: EdgeInsets.all(4.0),
                          width: _currentIndex == index ? 20 : 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          )),
                    ],
                  );
                  //return ImageDetailPage(imageUrl: imagesurl![index],);
                },
                options: CarouselOptions(height: 200, autoPlay: true),
              );
            },
            ),
          Divider(),
            post(),

          ],
        ),],




      ),

      ////imageList.isEmpty
      //? Center(child: CircularProgressIndicator())
    );
  }


}