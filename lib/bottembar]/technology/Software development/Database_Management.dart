import 'package:flutter/material.dart';

class database_manage extends StatefulWidget {
  const database_manage({super.key});

  @override
  State<database_manage> createState() => _database_manageState();
}

class _database_manageState extends State<database_manage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text(
          "Database Management ",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                "assets/technology/database_manage.gif",
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
                            ":: Key Concepts in Database Management :: ",
                            style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ":: Database :: ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.brown),
                          ),
                          Text(
                            "A collection of related data organized in a structured format. Table: A collection of rows and columns that represent a specific entity or concept.",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            ":: Row : : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.brown),
                          ),
                          Text(
                            " A record or tuple that contains data for a single instance of an entity.",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            ":: Column : : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.brown),
                          ),
                          Text(
                            "A field or attribute that represents a specific characteristic of an entity.",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            ":: Primary Key : : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.brown),
                          ),
                          Text(
                            "A unique identifier for each row in a table.",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            ":: Foreign key : : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.brown),
                          ),
                          Text(
                            "A field in one table that references the primary key in another table, establishing a relationship between the two",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            ":: Relational database management system (RDBMS) : : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.brown),
                          ),
                          Text(
                            "A software system that manages relational databases.",
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
                        backgroundImage:
                            AssetImage("assets/technology/pdf.gif"),
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
                        "Book :Database Management Systems.......",
                        style: TextStyle(color: Colors.black),
                      ),
                      leading: const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/technology/book.gif"),
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
                        backgroundImage:
                            AssetImage("assets/technology/test.gif"),
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
      ),
    );
  }
}
