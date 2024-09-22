import 'package:flutter/material.dart';

class Wireless_Networking extends StatefulWidget {
  const Wireless_Networking({super.key});

  @override
  State<Wireless_Networking> createState() => _Wireless_NetworkingState();
}

class _Wireless_NetworkingState extends State<Wireless_Networking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Wireless Networking"),
      ),
    );
  }
}
