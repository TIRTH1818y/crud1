import 'package:flutter/material.dart';

class Data_mining extends StatefulWidget {
  const Data_mining({super.key});

  @override
  State<Data_mining> createState() => _Data_miningState();
}

class _Data_miningState extends State<Data_mining> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Data mining",style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
