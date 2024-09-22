import 'package:flutter/material.dart';

class Application_AI extends StatefulWidget {
  const Application_AI({super.key});

  @override
  State<Application_AI> createState() => _Application_AIState();
}

class _Application_AIState extends State<Application_AI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Application of AI",style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
