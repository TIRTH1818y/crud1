import 'package:flutter/material.dart';

class Types_AI extends StatefulWidget {
  const Types_AI({super.key});

  @override
  State<Types_AI> createState() => _Types_AIState();
}

class _Types_AIState extends State<Types_AI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Types of AI",style: TextStyle(color: Colors.white),),
      ),
      body:  Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: Image.asset(
              "assets/technology/types_OF_AI.gif",
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
                          "::  Narrow AI (ANI) :: ",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          ":: Definition :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          " This type of AI is designed to perform a specific task or set of tasks. It is highly specialized and excels at its designated function.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Examples :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          "Image recognition systems,Speech recognition software,irtual assistants like Siri and Alexa,",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: General AI (AGI) :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo,
                              fontSize: 16),
                        ),
                        Text(
                          ":: Definition :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          "  Also known as Strong AI, this type of AI possesses the ability tounderstand, learn, and apply knowledge across a wide range of tasks, similar to human intelligence.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Superintelligence (ASI) :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo,
                              fontSize: 16),
                        ),
                        Text(
                          ":: Definition :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          " This hypothetical type of AI surpasses human intelligence in all aspects, including creativity, problem-solving, and general knowledge.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Status :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          " ASI is a speculative concept, and its development raises significant ethical and societal concerns.",
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
                      "PDFs :DifferentTypesofArtificialIntelligenceSystems,AI AND MACHINE LEARNINg.....",
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
                      "Book :AI A Modern Approach,ARTIFICIAL INTELLIGENCE AND MACHINE LEARNING........",
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
