import 'package:flutter/material.dart';

class cloud_comp extends StatefulWidget {
  const cloud_comp({super.key});

  @override
  State<cloud_comp> createState() => _cloud_compState();
}

class _cloud_compState extends State<cloud_comp> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text(
          "Cloud Comptuing ",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                "assets/technology/cloud_com.gif",

              ),
            ),
            Divider(
              height: 20,
              color: Colors.black54,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5, left: 5, right: 5,bottom: 5),
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
                            ":: Key Characteristics of Cloud Computing :: ",
                            style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ":: On-demand self-service :: ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.brown),
                          ),
                          Text(
                            "Users can access and release resources as needed without requiring significant interaction with the cloud provider.",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            ":: Broad network access : : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.brown),
                          ),
                          Text(
                            "Resources can be accessed from various devices and locations over the Internet.",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            ":: Resource pooling : : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.brown),
                          ),
                          Text(
                            " Multiple customers share a pool of physical resources that are dynamically allocated and reassigned.",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "::  Rapid elasticity : : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.brown),
                          ),
                          Text(
                            " Resources can be scaled up or down quickly to meet changing demands.",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "::  Measured service : : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.brown),
                          ),
                          Text(
                            "Usage is metered, and customers pay only for the resources they consume.",
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
                        "PDFs : MySQL,PostgreSQL,Oracle Database......",
                        style: TextStyle(color: Colors.black),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/technology/pdf.gif"),
                      ),
                      trailing: Icon(Icons.account_tree_outlined,color: Colors.green,),
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
                        "Book :Database Management Systems.......",
                        style: TextStyle(color: Colors.black),
                      ),
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage("assets/technology/book.gif"),
                      ),
                      trailing: Icon(Icons.account_tree_outlined,color: Colors.green,),
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
                      trailing: Icon(Icons.account_tree_outlined,color: Colors.green,),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
