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

  // fetchImages() async {
  //   QuerySnapshot querySnapshot = await _firestore.collection('images').get();
  //   setState(() {
  //     imageList = querySnapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
  //   });
  // }
  PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  FutureBuilder(future: futureimages, builder: (context, snapshot) {
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
            return Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: Row(

                children: [
                  CachedNetworkImage(
                    width: 300 ,
                    imageUrl: imagesurl![index],
                    fit: BoxFit.cover,

                    placeholder: (context, url) =>
                        Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),AnimatedContainer(duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.all(4.0),
                      height: 10,
                      width: _currentIndex == index ? 20 : 10,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                      )),

                ],

              ),
            );
            // return ImageDetailPage(imageUrl: imagesurl![index],);
          },
          options: CarouselOptions(height: 400.0, autoPlay: true),

        );
      },
      ),

      ////imageList.isEmpty
      //? Center(child: CircularProgressIndicator())
    );

  }


}