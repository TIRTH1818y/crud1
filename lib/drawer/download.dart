import 'package:flutter/material.dart';

class downloadpdf extends StatefulWidget {
  const downloadpdf({super.key});

  @override
  State<downloadpdf> createState() => _downloadpdfState();
}

class _downloadpdfState extends State<downloadpdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("all downloaded PDFs are here"),
      ),
    );
  }
}
