import 'package:flutter/material.dart';

class Ethical_Hacking extends StatefulWidget {
  const Ethical_Hacking({super.key});

  @override
  State<Ethical_Hacking> createState() => _Ethical_HackingState();
}

class _Ethical_HackingState extends State<Ethical_Hacking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title:Text(" Ethical Hacking",style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
