import 'package:flutter/material.dart';

class Wireless_Networking extends StatefulWidget {
  const Wireless_Networking({super.key});

  @override
  State<Wireless_Networking> createState() => _Wireless_NetworkingState();
}

class _Wireless_NetworkingState extends State<Wireless_Networking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Wireless Networking",style: TextStyle(color: Colors.white70),),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: Image.asset(
              "assets/technology/wireless_net1.gif",
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
                          ":: Key Components of Wireless Networking :: ",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          ":: Access points (APs) :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          "Devices that transmit and receive wireless signals.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Wireless devices :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          "Devices that can connect to a wireless network, such as laptops, smartphones, tablets, and IoT devices.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Wireless protocols :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          "Standards that govern how data is transmitted and received over wireless networks.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
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
                      "PDFs :Fundamentals of wireless communication.....",
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
                      "Book :Wireless Networking Technology ........",
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
