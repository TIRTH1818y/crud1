import 'package:flutter/material.dart';

class Digital_Forensics extends StatefulWidget {
  const Digital_Forensics({super.key});

  @override
  State<Digital_Forensics> createState() => _Digital_ForensicsState();
}

class _Digital_ForensicsState extends State<Digital_Forensics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Digital Forensics"),
      ),
    );
  }
}
