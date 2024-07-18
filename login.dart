import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:untitled/Services/authentication.dart';
import 'package:untitled/crud.dart';
import 'package:untitled/elevated.dart';
import 'package:untitled/signup.dart';
import 'package:untitled/snackbar.dart';
import 'package:untitled/textfield.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

final timer = Timer(
  const Duration(seconds: 5),
  () => CircularProgressIndicator(
    color: Colors.blue,
    semanticsLabel: "Sign Up..",
  ),
);

class _LoginState extends State<Login> {
  //for Controller
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      timer;
      return await FirebaseAuth.instance.signInWithCredential(credential).then(
            (value) => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => FirestoreDatabase(),
              ),
            ),
          );
    } catch (e) {
      print(e.toString());
    }
    return null;
  }

  bool isLoading = false;

  void loginUsers() async {
    String res = await AuthServices().loginUser(
      email: emailController.text.toString().trim(),
      password: passwordController.text.toString().trim(),
    );

    if (res == "success") {
      setState(() {
        isLoading = true;
      });
      timer;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => FirestoreDatabase(),
        ),
      );
    } else {
      setState(() {
        isLoading = false;
      });
      showSnackBar(context, res);
    }
  }

  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
     extendBodyBehindAppBar: true,
      body: Stack(
        children: [Image.asset("assets/images/bg1.png",fit: BoxFit.cover,width:double.infinity ,height:double.infinity,),

          Container(
          child: SingleChildScrollView(
            child: SafeArea(
              child: SizedBox(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        height: 200,
                        width: 130,
                        child: Image.asset("assets/images/loginlogo.png"),),
                      textfield(

                          textEditingController: emailController,
                          hintText: "Enter Your Email",
                          icon: Icons.email),
                      textfield(
                          isPass: true,
                          textEditingController: passwordController,
                          hintText: "Enter Your Password",
                          icon: Icons.lock),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 35),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forgot Password..?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      elevated(onTab: loginUsers, text: "Log In"),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                          }
                        },
                        child:  Image.asset("assets/images/google.png",scale: 10,),
                      ),
                      SizedBox(
                        height:220,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an Acount?",
                            style: TextStyle(color: Colors.white,fontSize: 20),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => signup()));
                            },
                            child: Text(
                              " SignUp",

                              style: TextStyle(color: Colors.blueAccent,
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),],

      ),
    );
  }
}
