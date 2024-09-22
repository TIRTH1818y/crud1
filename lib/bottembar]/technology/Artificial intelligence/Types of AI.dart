import 'package:flutter/material.dart';

class Types_AI extends StatefulWidget {
  const Types_AI({super.key});

  @override
  State<Types_AI> createState() => _Types_AIState();
}

class _Types_AIState extends State<Types_AI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Types of AI"),
      ),
    );
  }
}
