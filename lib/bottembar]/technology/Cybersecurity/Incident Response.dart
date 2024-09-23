import 'package:flutter/material.dart';

class Incident_Response extends StatefulWidget {
  const Incident_Response({super.key});

  @override
  State<Incident_Response> createState() => _Incident_ResponseState();
}

class _Incident_ResponseState extends State<Incident_Response> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Incident Response",style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: Image.asset(
              "assets/technology/Incident_Response1.gif",
              fit: BoxFit.fill,
            ),
          ),
          Divider(
            height: 20,
            color: Colors.black54,
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
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
                          "Incident Response: A Comprehensive Guide  ",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          ":: Incident response :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          "Incident response is a coordinated set of actions taken to identify, contain, eradicate, and recover from a security breach or other adverse event. It's a critical component of a robust cybersecurity strategy. ",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Key Phases of Incident Response :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),

                        Text(
                          "1. Preparation",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          "Develop incident response plans ", style: TextStyle(color: Colors.black, fontSize: 15),
                        ), Text(
                          "Identify and train response teams ", style: TextStyle(color: Colors.black, fontSize: 15),
                        ), Text(
                          "Establish communication protocols ", style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          "Conduct regular drills and exercises ", style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          "2.Detection and Analysis",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          "Monitor systems and networks for anomalies ", style: TextStyle(color: Colors.black, fontSize: 15),
                        ), Text(
                          "Investigate incidents promptly", style: TextStyle(color: Colors.black, fontSize: 15),
                        ), Text(
                          "Gather evidence and assess the impact ", style: TextStyle(color: Colors.black, fontSize: 15),
                        ),

                        Text(
                          "3.Containment",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          "Isolate affected systems or networks ", style: TextStyle(color: Colors.black, fontSize: 15),
                        ), Text(
                          "Prevent further damage", style: TextStyle(color: Colors.black, fontSize: 15),
                        ), Text(
                          " Contain the spread of malware or unauthorized access", style: TextStyle(color: Colors.black, fontSize: 15),
                        ),

                        Text(
                          "4.Eradication",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          "Remove the root cause of the incident ", style: TextStyle(color: Colors.black, fontSize: 15),
                        ), Text(
                          "Eliminate malware or vulnerabilities", style: TextStyle(color: Colors.black, fontSize: 15),
                        ), Text(
                          "Restore systems to a secure state ", style: TextStyle(color: Colors.black, fontSize: 15),
                        ),

                        Text(
                          "5.Recovery",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          "Restore systems and data to normal operations", style: TextStyle(color: Colors.black, fontSize: 15),
                        ), Text(
                          "Implement preventive measures", style: TextStyle(color: Colors.black, fontSize: 15),
                        ), Text(
                          " Review and update incident response plans", style: TextStyle(color: Colors.black, fontSize: 15),
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
                      "PDFs : Computer Security Incident Handling.....",
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/technology/pdf.gif"),
                    ),
                    trailing: Icon(
                      Icons.account_tree_outlined,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

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
                      "Book :INCIDENT RESPONSE REFERENCE GUIDE,Incident	Management	and	Response	Guide........",
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage("assets/technology/book.gif"),
                    ),
                    trailing: Icon(
                      Icons.account_tree_outlined,
                      color: Colors.green,
                    ),
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
                    trailing: Icon(
                      Icons.account_tree_outlined,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
