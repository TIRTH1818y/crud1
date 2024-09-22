import 'package:flutter/material.dart';

class History_AI extends StatefulWidget {
  const History_AI({super.key});

  @override
  State<History_AI> createState() => _History_AIState();
}

class _History_AIState extends State<History_AI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("History of AI",style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
