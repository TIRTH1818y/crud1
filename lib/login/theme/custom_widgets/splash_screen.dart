import 'dart:async';
import 'package:crud1/login/theme/welcome.dart';
import 'package:flutter/material.dart';



class splash_screen extends StatefulWidget {

  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),(){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>welcome(),),);
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset("assets/images/splash.gif",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity),

        ],
      ),
    );
  }
}
