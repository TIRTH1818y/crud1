import 'package:flutter/material.dart';

class game_dev extends StatefulWidget {
  const game_dev({super.key});

  @override
  State<game_dev> createState() => _game_devState();
}

class _game_devState extends State<game_dev> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text(
          "Game Development",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                "assets/technology/game_dev.gif",

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
                            ":: Key Components of Game Development :: ",
                            style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ":: Game design :: ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.brown),
                          ),
                          Text(
                            "This involves planning the game's mechanics, storyline, and overall concept.",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            ":: Programming : : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.brown),
                          ),
                          Text(
                            "  Writing the code that makes the game function, including the game engine, AI, and gameplay logic.",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            ":: Art : : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.brown),
                          ),
                          Text(
                            "Creating the visual elements of the game, such as characters, environments, and animations.",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            ":: Audio : : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.brown),
                          ),
                          Text(
                            "Producing the sound effects, music, and voice acting for the game.",
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
                        "PDFs : C++,Unity,unreal engine,Python......",
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
                        "Book : Game Coding Complete Fourth Edition ,Game Development andProduction........",
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
