import 'dart:async';
import 'package:crud1/bottembar%5D/pdf.dart';
import 'package:crud1/bottembar%5D/technology/Artificial%20intelligence/AI.dart';
import 'package:crud1/bottembar%5D/technology/Cybersecurity/cybersecurity.dart';
import 'package:crud1/bottembar%5D/technology/DataScience/DataScience.dart';
import 'package:crud1/bottembar%5D/technology/Network/network.dart';
import 'package:crud1/bottembar%5D/technology/Software%20development/software_dev.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class tech_page extends StatefulWidget {
  const tech_page({Key? key}) : super(key: key);

  @override
  State<tech_page> createState() => _ListScreenState();
}

bool _show = false;

class _ListScreenState extends State<tech_page> {
  List<String> texts = [
    "Software Development",
    "Networking",
    "Cybersecurity",
    "Data Science",
    "Aetifical intelligence",
  ];

  List<String> subtitle = [
    'Web Development,Mobile App Development......',
    'Network Engineering,2.	Network security.....',
    'Ethical Hacking,Penetration Testing...',
    'Data Analysis,Dara mining...',
    'Application of AI,History of AI....',
  ];

  List<String> image = [
    'assets/technology/web.gif',
    'assets/technology/net.gif',
    'assets/technology/cyber.gif',
    'assets/technology/data.gif',
    'assets/technology/ai.gif',
  ];

  final List<Widget> tech = <Widget>[
          const software_dev(),
          const net_work(),
          const cyber_security(),
          const Data_Science(),
          const Artificial_intelligence(),
  ];


  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 500), () {
      setState(() {
        _show = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Column(
    //     children: [
    //       Container(
    //         width: 380,
    //         decoration: BoxDecoration(
    //             color: Colors.blue, borderRadius: BorderRadius.circular(50)),
    //         child: ListTile(
    //           leading: CircleAvatar(
    //             maxRadius: 25,
    //             backgroundImage: AssetImage('assets/technology/web.png'),
    //           ),
    //           title: Text(
    //             "Software development",
    //             style: TextStyle(color: Colors.white, fontSize: 20),
    //           ),
    //           subtitle: Text(
    //             ' Web Development,Mobile App Developme.....',
    //             style: TextStyle(color: Colors.white54),
    //           ), ////          <-- subtitle
    //           trailing: Icon(
    //             Icons.account_tree_outlined,
    //             color: Colors.black,
    //           ),
    //         ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: AnimatedContainer(
    //           duration: Duration(milliseconds: 300),
    //           curve: Curves.easeInOut,
    //           decoration: BoxDecoration(
    //               color: Colors.deepPurpleAccent.shade100,
    //               borderRadius: BorderRadius.circular(50)),
    //           child: ListTile(
    //             leading: CircleAvatar(
    //               maxRadius: 25,
    //               backgroundImage: AssetImage('assets/technology/web.png'),
    //             ),
    //             title: Text(
    //               "Network",
    //               style: TextStyle(color: Colors.white, fontSize: 20),
    //             ),
    //             subtitle: Text(
    //               '	Network Engineering,	Network security...',
    //               style: TextStyle(
    //                 color: Colors.white54,
    //               ),
    //             ), ////          <-- subtitle
    //             trailing: Icon(
    //               Icons.account_tree_outlined,
    //               color: Colors.black,
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );

    return Scaffold(
      bottomNavigationBar: const BottomAppBar(
        color: Colors.transparent,
        child: Center(child: Text("---:- IT Technologyes -:---",style: TextStyle(color: Colors.white30),)),
      ),
     backgroundColor: Colors.black45,
      body: ListView.builder(
        itemCount: texts.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
            child: AnimatedContainer(
              height: 80,
              curve: Curves.easeInOut,
             // width: !_show ? 10 : double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(40)),
              duration: Duration(milliseconds: 300),
              child: ListTile(
                title: Text(
                  "${texts[index]}",
                  style: const TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  subtitle[index],
                  style: const TextStyle(color: Colors.white60),
                ),
                onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (e)=>tech[index],),);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(image[index]),
                  maxRadius: 30,
                ),
              ),
            ),
          );
        },
      ),
    );

    //   Scaffold(
    //     body: SafeArea(
    //       child: SingleChildScrollView(
    //         physics: const BouncingScrollPhysics(),
    //         padding: EdgeInsets.symmetric(
    //           horizontal: screenWidth / 20,
    //         ),
    //         child: Column(
    //           children: [
    //             const SizedBox(
    //               height: 30,
    //             ),
    //             GestureDetector(
    //               onTap: () {
    //                 // Future.delayed(const Duration(milliseconds: 500), () {
    //                 //   setState(() {
    //                 //     startAnimation = true;
    //                 //   });
    //                 // });
    //               },
    //             ),
    //             const SizedBox(
    //               height: 30,
    //             ),
    //             ListView.builder(
    //               primary: false,
    //               shrinkWrap: true,
    //               itemCount: texts.length,
    //               itemBuilder: (context, index) {
    //                 return item(index);
    //               },
    //             ),
    //             const SizedBox(
    //               height: 50,
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   );
    // }
    //
    // Widget item(int index) {
    //   return AnimatedContainer(
    //     height: 70,
    //     width: screenWidth,
    //     curve: Curves.easeInOut,
    //     duration: Duration(milliseconds: 300 + (index * 200)),
    //     transform:
    //         Matrix4.translationValues(startAnimation ? 0 : screenWidth, 0, 0),
    //     margin: const EdgeInsets.only(
    //       bottom: 12,
    //     ),
    //     padding: EdgeInsets.symmetric(
    //       horizontal: screenWidth / 20,
    //     ),
    //     decoration: BoxDecoration(
    //       color: Colors.white,
    //       borderRadius: BorderRadius.circular(10),
    //     ),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         CircleAvatar(
    //           backgroundImage: AssetImage(image[index]),
    //         ),
    //         Text(
    //           " ${texts[index]}",
    //           style: const TextStyle(
    //             fontSize: 16,
    //             fontWeight: FontWeight.w500,
    //           ),
    //         ),
    //
    //         // Icon(
    //         //   icons[index],
    //         // ),
    //       ],
    //     ),
    //   );
    // }
  }
}
