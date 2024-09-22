import 'package:crud1/bottembar%5D/technology/DataScience/Dara%20mining.dart';
import 'package:crud1/bottembar%5D/technology/DataScience/Data%20Analysis.dart';
import 'package:crud1/bottembar%5D/technology/DataScience/Machine%20learning.dart';
import 'package:flutter/material.dart';

class Data_Science extends StatefulWidget {
  const Data_Science({super.key});

  @override
  State<Data_Science> createState() => _Data_ScienceState();
}

class _Data_ScienceState extends State<Data_Science> {
  List<String> texts = [
    'Data Analysis',
    'Data Mining',
    'Machine Learning',
  ];
  List<String> image = [
    'assets/technology/data_ana.gif',
    'assets/technology/data_mining.gif',
    'assets/technology/machine_learining.gif',
  ];
  final List<Widget> Datascience_field = <Widget>[
    const Data_Analysis(),
    const Data_mining(),
    const Machine_learning(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade100,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text(
          "Data science",
          style: TextStyle(color: Colors.white),
        ),
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
                  color: Colors.indigoAccent.shade200,
                  borderRadius: BorderRadius.circular(40)),
              duration: Duration(milliseconds: 300),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListTile(
                  title: Text(
                    "${texts[index]}",
                    style: const TextStyle(color: Colors.yellow, fontSize: 20),
                  ),
                  trailing: Icon(
                    Icons.account_tree_outlined,
                    color: Colors.greenAccent,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Datascience_field[index],
                      ),
                    );
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
