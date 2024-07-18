import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
//import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/Services/mail_verification.dart';
import 'package:untitled/login.dart';
import 'package:untitled/textfield.dart';

import 'elevated.dart';

class signup extends StatefulWidget {
  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  bool isLoading = false;
  File? pickedImage;
  final _imagePicker = ImagePicker();

  final timer = Timer(
    const Duration(seconds: 5),
    () => CircularProgressIndicator(
      color: Colors.blue,
      semanticsLabel: "Sign Up..",
    ),
  );

  // final GoogleSignIn _googleSignIn = GoogleSignIn();

  showAlertBox() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Select Image",
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                onTap: () async {
                  try {
                    final photo = await _imagePicker.pickImage(
                        source: ImageSource.camera);
                    if (photo != null) {
                      final tempImage = File(photo.path);
                      setState(() {
                        pickedImage = tempImage;
                      });
                    }
                  } catch (e) {
                    print(e.toString());
                  }
                  Navigator.pop(context);
                },
                leading: Icon(Icons.camera),
                title: Text("Camera"),
              ),
              ListTile(
                onTap: () async {
                  try {
                    final photo = await _imagePicker.pickImage(
                        source: ImageSource.gallery);
                    if (photo != null) {
                      final tempImage = File(photo.path);
                      setState(() {
                        pickedImage = tempImage;
                      });
                    }
                  } catch (e) {
                    print(e.toString());
                  }
                  Navigator.pop(context);
                },
                leading: Icon(Icons.image),
                title: Text("Gallary"),
              ),
            ],
          ),
        );
      },
    );
  }

  signUpUsers(String email, String password, String name, String phone) async {
    if (email == "" && password == "" && name == "" && phone == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 3),
          content: Text(
            "Please Enter All Fields.",
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    } else {
      try {
        UserCredential userCredential;

        userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: email.toString().trim(),
                password: password.toString().trim());

        UploadTask uploadTask = FirebaseStorage.instance
            .ref("UserImages")
            .child(emailController.text.toString())
            .putFile(pickedImage!);

        TaskSnapshot taskSnapshot = await uploadTask;
        String imageURL = await taskSnapshot.ref.getDownloadURL();
        FirebaseFirestore.instance
            .collection("Users")
            .doc(userCredential.user!.uid)
            .set({
          "name": name.toString().trim(),
          "email": email.toString().trim(),
          "password": password.toString().trim(),
          'uid': userCredential.user!.uid.toString(),
          "image": imageURL,
          "phone": phone.toString().trim()
        });
        print("Signed Up Successfully.");
        timer;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => verifyEmail(),
          ),
        );
      } catch (e) {
        print(e.toString());
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
     extendBodyBehindAppBar: true,
      body: Stack(children: [
        Image.asset("assets/images/bg1.png",fit: BoxFit.cover,width: double.infinity,height: double.infinity,),
        Container(
          child: SingleChildScrollView(
            child: SafeArea(
              child: SizedBox(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      InkWell(
                        onTap: showAlertBox,
                        child: pickedImage != null
                            ? CircleAvatar(
                          radius: 60,
                          backgroundImage: FileImage(pickedImage!),
                        ) :
                         Image.asset("assets/images/profile.png",width: 100,),




                      ),
                      SizedBox(
                        height: 20,
                      ),
                      textfield(
                          textEditingController: nameController,
                          hintText: "Enter Your Name",
                          icon: Icons.person,),
                      SizedBox(
                        height: 20,
                      ),
                      textfield(

                          textEditingController: emailController,
                          hintText: "Enter Your Email",
                          icon: Icons.email),
                      SizedBox(
                        height: 20,
                      ),
                      textfield(
                          length: 10,
                          keyboard: TextInputType.phone,
                          textEditingController: phoneController,
                          hintText: "Enter Your Phone Number",
                          icon: Icons.phone_outlined),

                      textfield(
                          isPass: true,
                          textEditingController: passwordController,
                          hintText: "Enter Your Password",
                          icon: Icons.lock),
                      elevated(
                          onTab: () {
                            signUpUsers(
                                emailController.text,
                                passwordController.text,
                                nameController.text,
                                phoneController.text);
                          },
                          text: "Sign Up"),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "I have already Acount?",
                            style: TextStyle(color: Colors.white,fontSize: 20),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) => Login()));
                            },
                            child: Text(
                              " Login",
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
        ),
      ],

      ),
    );
  }
}
