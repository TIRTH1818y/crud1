import 'package:flutter/material.dart';

class Application_AI extends StatefulWidget {
  const Application_AI({super.key});

  @override
  State<Application_AI> createState() => _Application_AIState();
}

class _Application_AIState extends State<Application_AI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Application of AI",style: TextStyle(color: Colors.white),),
      ),
      body:   Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: Image.asset(
              "assets/technology/application__AI.gif",
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
                          ":: Applications of Artificial Intelligence (AI)  :: ",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          "AI has revolutionized various industries and is being integrated into numerous applications. Here are some key areas where AI is making a significant impact:",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Healthcare :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo,
                              fontSize: 16),
                        ),
                        Text(
                          ":: Healthcare :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),

                        Text(
                          ":: Diagnosis :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          "AI-powered systems can analyze medical images, such as X-rays and MRIs, to assist in diagnosing diseases.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Drug Discovery :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          " AI can accelerate the process of discovering new drugs by analyzing vast amounts of molecular data.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Personalized Medicine :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          "AI can tailor treatment plans to individual patients based on their genetic makeup and medical history.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Finance :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo,
                              fontSize: 16),
                        ),
                        Text(
                          ":: Fraud Detection: :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          " AI algorithms can identify fraudulent transactions by analyzing patterns in financial data.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Algorithmic Trading :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          " AI-powered systems can make automated trading decisions based on market data and trends. ",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Risk Assessment :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          " AI can evaluate credit risk and investment risk more accurately. ",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Customer Service :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo,
                              fontSize: 16),
                        ),
                        Text(
                          ":: Chatbots :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          " AI-powered chatbots can provide customer support and answer questions 24/7.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Personalization :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          " AI can personalize recommendations and product offerings based on customer preferences and behavior.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Marketing :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo,
                              fontSize: 16),
                        ),
                        Text(
                          ":: Targeted Advertising :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          " AI can help identify the most relevant audience for advertising campaigns.",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Customer Segmentation :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          "AI can group customers based on their characteristics and preferences. ",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Manufacturing :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo,
                              fontSize: 16),
                        ),
                        Text(
                          ":: Predictive Maintenance :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          "AI can predict equipment failures before they occur, reducing downtime. ",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          ":: Quality Control :: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 16),
                        ),
                        Text(
                          "AI can inspect products for defects more accurately than humans. ",
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
                      "PDFs : Application of AI,ARTIFICIAL-INTELLIGENCE-APPLICATIONS-2023.....",
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
                      "Book :AI_a_morden_approach,AI CONCEPTS AND APPLICATIONS........",
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
