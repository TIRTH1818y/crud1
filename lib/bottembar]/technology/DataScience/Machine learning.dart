import 'package:flutter/material.dart';

class Machine_learning extends StatefulWidget {
  const Machine_learning({super.key});

  @override
  State<Machine_learning> createState() => _Machine_learningState();
}

class _Machine_learningState extends State<Machine_learning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Machine learning",style:TextStyle(color: Colors.white),),
      ),
    );
  }
}
