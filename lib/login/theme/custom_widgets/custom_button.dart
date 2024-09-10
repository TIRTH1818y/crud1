import 'package:flutter/material.dart';


class welcomebutton extends StatelessWidget {
  const welcomebutton({super.key, this.buttonText,this.ontap,this.color,this.textColor});
  final String? buttonText;
  final Widget? ontap;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (e) => ontap!,
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(30),
          decoration:  BoxDecoration(
              color: color!,
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(50))),
          child: Text(
            buttonText!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: textColor!,
            ),
          )),
    );
  }
}
