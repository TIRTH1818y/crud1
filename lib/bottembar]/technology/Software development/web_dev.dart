import 'package:flutter/material.dart';

class web_dev extends StatefulWidget {
  web_dev({super.key});

  @override
  State<web_dev> createState() => _web_devState();
}

class _web_devState extends State<web_dev> {
  List<String> icon = [
    ' Icon(Icons.ice_skating)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text(
          "Web Development",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body:
      Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: Image.asset(
              "assets/technology/webpage.gif",
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
                          ":: Key Components of Web Development :: ",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          ":: Front-end development :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          "This involves creating the user interface (UI) of a website, including the layout, design, and interactive elements. Technologies used include HTML, CSS, and JavaScript.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Back-and-developmant ::",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.brown),
                        ),
                        Text(
                          "This focuses on the server-side of a website, handling data, logic, and functionality. Technologies used include languages like Python, Ruby, PHP, and frameworks like Node.js.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Database manageme : : ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.brown),
                        ),
                        Text(
                          "Database management: This involves storing and organizing data used by a website. Databases like MySQL, PostgreSQL, and MongoDB are commonly used.",
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
                      "PDFs : HTML,CSS,JavaScript.....",
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
                      "Book :Web Design Basics,Introduction to Web Programming ........",
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
