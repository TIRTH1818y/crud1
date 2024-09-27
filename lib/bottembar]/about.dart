import 'dart:math';

import 'package:flutter/material.dart';

class about_dev extends StatefulWidget {
  const about_dev({super.key});

  @override
  State<about_dev> createState() => _about_devState();
}

class _about_devState extends State<about_dev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: Text(
            "About DEV",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 50),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/I M P.png"),
                    radius: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "IT  ",
                    style: TextStyle(
                        fontFamily: 'teko', fontSize: 35, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Material",
                    style: TextStyle(
                        fontFamily: 'teko', fontSize: 35, color: Colors.cyan),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    " Point",
                    style: TextStyle(
                        fontFamily: 'teko', fontSize: 35, color: Colors.teal),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  width: 350,
                  height: 300,
                  child: Text(
                      "asdgfsddddaksjdflkasdjf;lkasdjfl;sakfjsa;lkfdjlkfjas;lkfsjaf;kasjf;lksafjas;lkfjsalkfjaslk;fjas;lkfasj;lfjsa;fksd")),
            ),
           Padding(
             padding: const EdgeInsets.only(top: 20,left: 80),
             child: Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left:10 ),
                   child: CircleAvatar(
                     backgroundImage: AssetImage("assets/images/h.jpg"),radius: 40,
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 60),
                   child: CircleAvatar(
                     backgroundImage: AssetImage("assets/images/t.png"),radius: 40,
                   ),
                 ),
               ],
             ),
           ),
            Padding(
              padding: const EdgeInsets.only(left: 70,top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:10 ),
                    child: Text("Himanshu Jadav",style: TextStyle(fontFamily: 'teko',fontSize: 25),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text("Tirth Sonigara",style: TextStyle(fontFamily: 'teko',fontSize: 25),),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
