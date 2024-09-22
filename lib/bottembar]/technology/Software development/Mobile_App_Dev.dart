import 'package:flutter/material.dart';

class Mobi_App__dev extends StatefulWidget {
 const Mobi_App__dev({super.key});

  @override
  State<Mobi_App__dev> createState() => _web_devState();
}

class _web_devState extends State<Mobi_App__dev> {


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text(
          "Mobile App Development",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                "assets/technology/mobile_app_dev.gif",
                
              ),
            ),
            Divider(
              height: 20,
              color: Colors.black54,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 5, right: 5,bottom: 5),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10)),
                height: 150,
                child: const SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            ":: Key Technologies and Platforms: :: ",
                            style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ":: iOS :: ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                          Text(
                            "Apple's mobile operating system, primarily used for iPhones and iPads. Development is done using Swift or Objective-C programming languages and the Xcode development environment."
                           , style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            ":: Android : : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                          Text(
                            "Google's mobile operating system, widely used by various smartphone manufacturers. Development is typically done using Java or Kotlin programming languages and the Android Studio development environment.",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "::  Cross-platform development : : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                          Text(
                            "This approach allows you to create apps that can run on both iOS and Android using frameworks like Flutter (developed by Google) or React Native (developed by Facebook).",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            const Divider(
              height: 20,
              color: Colors.black54,
            ),
        
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      border: const Border(
                          right: BorderSide(color: Colors.black, width: 2),
                          left: BorderSide(color: Colors.black, width: 2),
                          top: BorderSide(color: Colors.black, width: 2),
                          bottom: BorderSide(color: Colors.black, width: 2)),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const ListTile(
                      title: Text(
                        "PDFs",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      subtitle: Text(
                        "PDFs : Java,Kotlin,Dart,Flutter,Xcode.....",
                        style: TextStyle(color: Colors.black),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/technology/pdf.gif"),
                      ),
                      trailing: Icon(Icons.account_tree_outlined,color: Colors.green,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(color: Colors.black, width: 2),
                            left: BorderSide(color: Colors.black, width: 2),
                            top: BorderSide(color: Colors.black, width: 2),
                            bottom: BorderSide(color: Colors.black, width: 2)),
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(50)),
                    child: ListTile(
                      title: const Text(
                        "Reference Book",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      subtitle: const Text(
                        "Book :Learning Mobile App dev........",
                        style: TextStyle(color: Colors.black),
                      ),
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage("assets/technology/book.gif"),
                      ),
                      trailing: Icon(Icons.account_tree_outlined,color: Colors.green,),
                      onTap: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(color: Colors.black, width: 2),
                            left: BorderSide(color: Colors.black, width: 2),
                            top: BorderSide(color: Colors.black, width: 2),
                            bottom: BorderSide(color: Colors.black, width: 2)),
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(50)),
                    child: const ListTile(
                      title: Text(
                        "Papers",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      subtitle: Text(
                        "year : 2022.,2023....",
                        style: TextStyle(color: Colors.black),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/technology/test.gif"),
                      ),
                      trailing: Icon(Icons.account_tree_outlined,color: Colors.green,),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
