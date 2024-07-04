import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'otpUI.dart';


class phoneotp extends StatefulWidget {
  const phoneotp({super.key});

  @override
  State<phoneotp> createState() => _phoneotpState();
}

class _phoneotpState extends State<phoneotp> {
  var phonenumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP test "),
        backgroundColor: Colors.greenAccent,
        shadowColor:Colors.white,
        toolbarHeight: 40,
        centerTitle: true,

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  maxLength:13,
                  controller: phonenumber,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(

                      filled: true,
                      fillColor: Colors.white70,
                      labelText: "Enter your phone",
                      hintText: "+91 add Enter Phone Number",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide:
                              BorderSide(color: Colors.white, width: 3)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: BorderSide(color: Colors.black, width: 2)),
                      suffixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                      )),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () async {
                    await
                        //allocated phone number in firebase
                        FirebaseAuth.instance.verifyPhoneNumber(
                            verificationCompleted:
                                (PhoneAuthCredential credential) {},
                            //jo verification fail thai to ex ni andr Exception jase
                            verificationFailed: (FirebaseAuthException ex) {},
                            //verification screen par mokal va mare and jo token expire thai int resendtoken thi
                            codeSent: (String verificationid, int? resendtoken) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (Context) => otpUI(
                                            verificationid: verificationid,
                                          )));
                            },
                            //jo OTP expire thai to ("verificationid ")  phonenumber textfield thi pachu OTP mokal va mate
                            codeAutoRetrievalTimeout: (String verificationid) {},
                            phoneNumber: phonenumber.text.toString());
                  },
                  child: Text("Verify Your Number")),
            ],


          ),

        ),

      ),

    );
  }
}
