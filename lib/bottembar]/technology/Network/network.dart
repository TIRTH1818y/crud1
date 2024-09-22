import 'package:crud1/bottembar%5D/technology/Network/Network%20Engineering.dart';
import 'package:crud1/bottembar%5D/technology/Network/Network%20security.dart';
import 'package:crud1/bottembar%5D/technology/Network/Wireless%20Networking.dart';
import 'package:flutter/material.dart';

class net_work extends StatefulWidget {
  const net_work({super.key});

  @override
  State<net_work> createState() => _net_workState();
}

class _net_workState extends State<net_work> {

  List<String>texts =[
    'Network Engineering',
    'Network security',
    'wireless Networking',

  ];
  List<String> image = [
      'assets/technology/network_eng.gif',
      'assets/technology/network_security.gif',
      'assets/technology/wireless_net.gif',
  ];
  final List<Widget> Network_field = <Widget>[
    const Network_Engineering(),
    const Network_security(),
    const Wireless_Networking(),
  ];





  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.cyan.shade100,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Network",style: TextStyle(color: Colors.white),),
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
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Network_field[index],),);
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
