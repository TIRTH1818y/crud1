import 'package:flutter/material.dart';

class Incident_Response extends StatefulWidget {
  const Incident_Response({super.key});

  @override
  State<Incident_Response> createState() => _Incident_ResponseState();
}

class _Incident_ResponseState extends State<Incident_Response> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Incident Response"),
      ),
    );
  }
}
