import 'package:crud1/bottembar%5D/technology/Software%20development/Cloud_Computing.dart';
import 'package:crud1/bottembar%5D/technology/Software%20development/Database_Management.dart';
import 'package:crud1/bottembar%5D/technology/Software%20development/Game_Development.dart';
import 'package:crud1/bottembar%5D/technology/Software%20development/Mobile_App_Dev.dart';
import 'package:crud1/bottembar%5D/technology/Software%20development/web_dev.dart';
import 'package:flutter/material.dart';

class software_dev extends StatefulWidget {
  const software_dev({super.key});

  @override
  State<software_dev> createState() => _software_devState();
}

class _software_devState extends State<software_dev> {

  List<String> texts = [
    "Web Development",
    "Mobile App Development",
    "Game Development",
    "Database Management",
    "Cloud Computing",
  ];


  List<String> image = [
    'assets/technology/software.gif',
    'assets/technology/mobileapp.gif',
    'assets/technology/game.gif',
    'assets/technology/database.gif',
    'assets/technology/cloud.gif',
  ];

 final List<Widget> _soft_tech = <Widget>[
             web_dev(),
            const Mobi_App__dev(),
            const game_dev(),
            const database_manage(),
            const cloud_comp()
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Software Development",style: TextStyle(color: Colors.white),),
      ),


        body: ListView.builder(
          itemCount: texts.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
              child: AnimatedContainer(
                  height: 80,
                curve: Curves.easeInOut,
             //   width: !_show ? 10 : double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.indigoAccent.shade200, borderRadius: BorderRadius.circular(40)),
                duration: Duration(milliseconds: 300),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListTile(
                                trailing: Icon(Icons.account_tree_outlined,color: Colors.greenAccent,),
                    title: Text(
                      "${texts[index]}",
                      style: const TextStyle(color: Colors.yellow,fontSize: 20),
                    ),

                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>_soft_tech[index],),);
                     // Navigator.push(context, MaterialPageRoute(builder: (e)=>const software_dev(),),);

                    },
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(image[index]),
                      radius: 30,

                    ),
                  ),
                ),
              ),
            );
          },
        ),
      );
  }
}
