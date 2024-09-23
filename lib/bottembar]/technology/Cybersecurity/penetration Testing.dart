import 'package:flutter/material.dart';

class Penetration_Testing extends StatefulWidget {
  const Penetration_Testing({super.key});

  @override
  State<Penetration_Testing> createState() => _Penetration_TestingState();
}

class _Penetration_TestingState extends State<Penetration_Testing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Penetration Testing",style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: Image.asset(
              "assets/technology/penetation_test.gif",
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
                          ":: Types of Penetration Testing :: ",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          ":: Black-box testing :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          " The tester has no prior knowledge of the system or network, simulating an external attacker.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: White-box testing :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          " The tester has detailed knowledge of the system or network, simulating an insider threat.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Gray-box testing :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          " The tester has limited knowledge of the system or network, simulating a privileged user.",
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
                      "PDFs : Pnetration Testing,Network mepping.....",
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
                      "Book :Ethical Hacking ........",
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
