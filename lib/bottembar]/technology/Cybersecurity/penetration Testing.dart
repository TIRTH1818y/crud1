import 'package:flutter/material.dart';

class Penetration_Testing extends StatefulWidget {
  const Penetration_Testing({super.key});

  @override
  State<Penetration_Testing> createState() => _Penetration_TestingState();
}

class _Penetration_TestingState extends State<Penetration_Testing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Penetration Testing"),
      ),
    );
  }
}
