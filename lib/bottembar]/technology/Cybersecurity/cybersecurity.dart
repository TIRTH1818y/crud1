import 'package:crud1/bottembar%5D/technology/Cybersecurity/Digital%20Forensics.dart';
import 'package:crud1/bottembar%5D/technology/Cybersecurity/Ethical%20Hacking.dart';
import 'package:crud1/bottembar%5D/technology/Cybersecurity/Incident%20Response.dart';
import 'package:crud1/bottembar%5D/technology/Cybersecurity/penetration%20Testing.dart';
import 'package:flutter/material.dart';

class cyber_security extends StatefulWidget {
  const cyber_security({super.key});

  @override
  State<cyber_security> createState() => _cyber_securityState();
}

class _cyber_securityState extends State<cyber_security> {

  List<String>texts =[
        "Ethical Hacking",
        "Penetration Testing",
        " Incident Response",
        "Digital Forensics",

  ];

  List<String> image = [
    'assets/technology/ethical.gif',
    'assets/technology/penetration_testing.gif',
    'assets/technology/incident_response.gif',
    'assets/technology/digital_forensics.gif',
  ];

  final List<Widget>  Cybersecurity_field = <Widget>[
      const Ethical_Hacking(),
    const Penetration_Testing(),
    const Incident_Response(),
    const Digital_Forensics()
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.cyan.shade100,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Cybersecurity",style: TextStyle(color: Colors.white),),
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
                    backgroundImage: AssetImage(image[index]),
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
