import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  //for storing data in cloud firestore
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //for authentication
  final FirebaseAuth _auth = FirebaseAuth.instance;

//for signup
  Future<String> signupUser(
      {required String email,
      required String password,
      required String name}) async {
    String res = "Some error occurred";
    try {
      if (email.isNotEmpty || name.isNotEmpty || password.isNotEmpty) {
        // for register user in firebaseauth with email and password
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        //for addin user  to our cloud firestore
        await _firestore
            .collection("login_users")
            .doc(credential.user!.uid)
            .set({
          'name': name,
          "email": email,
          'uid': credential.user!.uid,
        });
        res = "success";
      }
    } catch (e) {
      return e.toString();
    }
    return res;
  }

//for login seccess
  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res ="some error occurred";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        //for login user with email and password
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = "success";
      }else{
        res = "please enter the all fields";
      }
    } catch (e) {
      return e.toString();
    }
    return res;
  }
  Future<void>SignOut()async{
      await _auth.signOut();
  }
}
