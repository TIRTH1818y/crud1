import 'package:flutter/material.dart';

class Network_security extends StatefulWidget {
  const Network_security({super.key});

  @override
  State<Network_security> createState() => _Network_securityState();
}

class _Network_securityState extends State<Network_security> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Network security"),
      ),
    );
  }
}
