import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'main.dart';


class otpUI extends StatefulWidget {
  //send the otp to otp.dart through
  String verificationid;
  otpUI({super.key, required this.verificationid});

  @override
  State<otpUI> createState() => _otpUIState();
}

class _otpUIState extends State<otpUI> {
  var otpcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Test"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.deepPurpleAccent,
                  Colors.blue,
                  Colors.green,
                ],
              )
          ),

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: otpcontroller,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: "Enter OTP",
                      suffixIcon: Icon(Icons.phone_rounded),
                      border: OutlineInputBorder()),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () async {
                    try {// check otp from send firebase to otpcontroller
                      PhoneAuthCredential Credential =
                      await PhoneAuthProvider.credential(verificationId: widget.verificationid, smsCode: otpcontroller.text.toString());
                        //if condition is true then push the main screen
                      FirebaseAuth.instance.signInWithCredential(Credential).then((value)
                      {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => MyHomePage(title: "My home page")));
                      });
                    } //ex use for any exception headlining
                    catch (ex){
                      log(ex.toString() as num);
                    }

                  },
                  child: Text("send OTP"))
            ],
          ),
        ),
      ),
    );
  }
}
