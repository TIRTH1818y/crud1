import 'package:flutter/material.dart';

import 'custom_widgets/custom_widgets.dart';


class forgetpass extends StatefulWidget {
  const forgetpass({super.key});

  @override
  State<forgetpass> createState() => _forgetpassState();
}

class _forgetpassState extends State<forgetpass> {
  @override
  Widget build(BuildContext context) {
    return customscaffold(
      child: Text("this page for forget password",style: TextStyle(color: Colors.white,fontSize: 25),),
    );
  }
}
