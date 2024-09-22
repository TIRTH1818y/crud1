import 'package:flutter/material.dart';

class Network_Engineering extends StatefulWidget {
  const Network_Engineering({super.key});

  @override
  State<Network_Engineering> createState() => _Network_EngineeringState();
}

class _Network_EngineeringState extends State<Network_Engineering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Network Engineering"),
      ),
    );
  }
}
