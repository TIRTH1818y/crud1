import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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

  @override
  void initState() {
    super.initState();
    fetchImages();
  }

  fetchImages() async {
    QuerySnapshot querySnapshot = await _firestore.collection('images').get();
    setState(() {
      imageList = querySnapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Slider")),
      body: imageList.isEmpty
          ? Center(child: CircularProgressIndicator())
          : CarouselSlider(
        options: CarouselOptions(height: 400.0, autoPlay: true),
        items: imageList.map((img) {
          return Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ImageDetailPage(
                        imageUrl: img['url'],
                        title: img['title'],
                        description: img['description'],
                      ),
                    ),
                  );
                },
                child: CachedNetworkImage(
                  imageUrl: img['url'],
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
