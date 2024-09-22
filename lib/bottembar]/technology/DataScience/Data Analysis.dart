import 'package:flutter/material.dart';

class Data_Analysis extends StatefulWidget {
  const Data_Analysis({super.key});

  @override
  State<Data_Analysis> createState() => _Data_AnalysisState();
}

class _Data_AnalysisState extends State<Data_Analysis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Data Analysis",style:TextStyle(color: Colors.white),),
      ),
    );
  }
}
