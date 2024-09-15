import 'package:flutter/material.dart';

class tech_page extends StatefulWidget {
  const tech_page({super.key});

  @override
  State<tech_page> createState() => _tech_pageState();
}

class _tech_pageState extends State<tech_page> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("this is a tech page")),
    );
  }
}
