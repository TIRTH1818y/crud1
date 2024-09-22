import 'package:crud1/bottembar%5D/technology/Artificial%20intelligence/Application%20of%20AI.dart';
import 'package:crud1/bottembar%5D/technology/Artificial%20intelligence/History%20of%20AI.dart';
import 'package:crud1/bottembar%5D/technology/Artificial%20intelligence/Types%20of%20AI.dart';
import 'package:flutter/material.dart';

class Artificial_intelligence extends StatefulWidget {
  const Artificial_intelligence({super.key});

  @override
  State<Artificial_intelligence> createState() => _Artificial_intelligenceState();
}

class _Artificial_intelligenceState extends State<Artificial_intelligence> {

  List<String>texts =[
    'Applicaition of AI',
    'History of AI',
    'Typrs of AI',


  ];

  List<String> image = [
    'assets/technology/applicaiotn_AI.gif',
    'assets/technology/history_AI.gif',
    'assets/technology/AI_type.gif',

];
  final List<Widget>  Cybersecurity_field = <Widget>[
        const Application_AI(),
    const History_AI(),
    const Types_AI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade100,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Artificial Intelligence",style: TextStyle(color: Colors.white),),
      ),
      body:   ListView.builder(
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
                padding: const EdgeInsets.only(top:10),
                child: ListTile(

                  title: Text(
                    "${texts[index]}",
                    style: const TextStyle(color: Colors.yellow,fontSize: 20),
                  ),
                  trailing: Icon(Icons.account_tree_outlined,color: Colors.greenAccent,),
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Cybersecurity_field[index],),);
                    // Navigator.push(context, MaterialPageRoute(builder: (e)=>const software_dev(),),);

                  },
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(image[index],),
                    maxRadius: 30,
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
