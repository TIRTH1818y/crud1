import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class profile_page extends StatefulWidget {



  const profile_page({super.key});

  @override
  State<profile_page> createState() => _profile_pageState();
}


class _profile_pageState extends State<profile_page> {

  String uid = FirebaseAuth.instance.currentUser!.uid;
  final CollectionReference myIteam =
      FirebaseFirestore.instance.collection("login_users");
  //final userData = Snapshot.data!.data() as Map<String, dynamic>;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: StreamBuilder<DocumentSnapshot>(
        stream:myIteam.doc(uid).snapshots(),

        builder: (context,  Snapshot) {
          if (Snapshot.hasError) {
            Text("some problem${Snapshot.error}");
            return ListView.builder(

                itemBuilder: (context, index) {
                  final userData = Snapshot.data!.data() as Map<String, dynamic>;

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      elevation: 10,
                      color: Colors.deepPurpleAccent.shade100,
                      borderRadius: BorderRadius.circular(20),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(
                              "Name : " + userData['name'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.yellowAccent),
                            ),
                            subtitle: Text(
                              "email : " + userData['email'],
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            trailing: SizedBox(
                              width: 100,
                              child: Row(
                                children: [],
                              ),
                            ), //edittind button
                          ),
                        ),
                      ),
                    ),
                  );
                });
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
