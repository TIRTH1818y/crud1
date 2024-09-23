import 'package:flutter/material.dart';

class Network_security extends StatefulWidget {
  const Network_security({super.key});

  @override
  State<Network_security> createState() => _Network_securityState();
}

class _Network_securityState extends State<Network_security> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Network security",style: TextStyle(color: Colors.white),),
      ),
      body:       Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: Image.asset(
              "assets/technology/net_security.gif",
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
                          ":: Key Components of Network Security :: ",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          ":: Access control :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          "Restricting access to network resources based on user identity, role, and privileges.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Firewall ::",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.brown),
                        ),
                        Text(
                          "A network security device that filters incoming and outgoing traffic to prevent unauthorized access.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Intrusion detection and prevention systems (IDPS) : : ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.brown),
                        ),
                        Text(
                          "Tools that monitor network traffic for suspicious activity and take action to block attacks.",
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          ":: Virtual private networks (VPNs) : : ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.brown),
                        ),
                        Text(
                          "Create secure connections over public networks, such as the internet.",
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          ":: Encryption : : ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.brown),
                        ),
                        Text(
                          "Transforming data into a code to protect it from unauthorized access.",
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          ":: Patch management : : ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.brown),
                        ),
                        Text(
                          " Keeping software and operating systems up-to-date with the latest security patches.",
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          ":: Physical security : : ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.brown),
                        ),
                        Text(
                          "Protecting network devices and infrastructure from physical damage or theft.",
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
                      "PDFs : Firewalls,network security.....",
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
                      "Book : CRYPTOGRAPHY AND NETWORK SECURITY PRINCIPLES AND PRACTICE ........",
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
