import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud1/bottembar%5D/pdf.dart';
import 'package:crud1/login/service/authentication.dart';
import 'package:crud1/login/theme/welcome.dart';
import 'package:flutter/material.dart';

class crudop extends StatefulWidget {
  const crudop({super.key});

  @override
  State<crudop> createState() => _crudopState();
}

class _crudopState extends State<crudop> {
  //one type of connection
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController positioncontroller = TextEditingController();
  final TextEditingController searchIDcontroller = TextEditingController();

  final CollectionReference myIteam =
      FirebaseFirestore.instance.collection("login_users");

  //for create a operation
  Future<void> create() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return mydialog(
              name: "Create Operation",
              condition: "create",
              onpressed: () {
                String name = namecontroller.text;
                String position = positioncontroller.text;
                additems(name, position);
                Navigator.pop(context); //close dialog after create data.
              });
        });
  }

  void additems(String name, String position) {
    myIteam.add({
      'name': name,
      'position': position,
    });
  }

// for update operation ===========================================================

  Future<void> update(DocumentSnapshot docmentsnapshot) async {
    namecontroller.text = docmentsnapshot['name'];
    positioncontroller.text = docmentsnapshot['position'];
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return mydialog(
              name: "Update User ID",
              condition: "update",
              onpressed: () async {
                String name = namecontroller.text;
                String position = positioncontroller.text;
                await myIteam.doc(docmentsnapshot.id).update({
                  'name': name,
                  'position': position,
                });
                namecontroller.text = '';
                positioncontroller.text = '';
                Navigator.pop(context); //close dialog after update data.
              });
        });
  }

//for deleate opration ====================================================
  Future<void> delete(String productId) async {
    await myIteam.doc(productId).delete();
    //for sancbar after  delete items
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.red,
        duration: Duration(milliseconds: 1000),
        content: Text("User is Successfull deleted"),
      ),
    );
  }

  String searchText = '';
  void onSearchChange(String value) {
    setState(() {
      searchText = value;
    });
  }

  bool isSearchClick = false;

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        centerTitle: true,
        title: isSearchClick
            ? Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  onChanged: onSearchChange,
                  controller: searchIDcontroller,

                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(16, 20, 16, 12),
                      hintText: "Search user..",
                      border: InputBorder.none,
                      helperStyle: TextStyle(color: Colors.black)),
                ))
            : const Text(
                "firebase crud",
                style: TextStyle(color: Colors.white),
              ),
    leading: Builder(
    builder: (context) {
    return IconButton(
    icon: const Icon(Icons.menu),
    onPressed: () {
    Scaffold.of(context).openDrawer();
    },
    );
    },
    ),

        backgroundColor: Colors.indigo,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isSearchClick = !isSearchClick;
              });
            },
            icon: Icon(
              isSearchClick ? Icons.close : Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.indigo,
        child:  IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>pdfop(),),);
          },
          icon: const Icon(Icons.picture_as_pdf,color: Colors.greenAccent,size: 40,
          ),
        ),
      ),



      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
             DrawerHeader( decoration: BoxDecoration(
              color: Colors.blue,
            ),child: Text("IT Material Point")),
            ListTile(
              title: const Text('Home'),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Business'),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('School'),
              selected: _selectedIndex == 2,
              onTap: () {
                // Update the state of the app
                _onItemTapped(2);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
            ),
      IconButton(
        onPressed: () async{
          await AuthServices().SignOut();
         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>welcome(),),);
          },
        icon: const Icon(Icons.logout,color: Colors.red,size: 30,),),
          ],
        ),
      ),
////////////////////////////////////////////////////////////////////////////////
      body:
      StreamBuilder(
          stream: myIteam.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.hasData) {
              final List<DocumentSnapshot> items = streamSnapshot.data!.docs.where(
                    (doc) => doc['name'].toLowerCase().contains(
                          searchText.toLowerCase(),
                        ),
                  )
                  .toList();
              return ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final DocumentSnapshot documentSnapshot =
                       items[index];

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        elevation: 10,
                        color: Colors.deepPurpleAccent.shade100,
                        borderRadius: BorderRadius.circular(20),
                        child: Padding(

                          padding: const EdgeInsets.all(8.0),
                          child: Padding(

                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: Text(
                                "Name : " + documentSnapshot['name'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,color: Colors.yellowAccent
                                ),
                              ),
                              subtitle: Text(
                                "email : " + documentSnapshot['email'],
                                style: TextStyle(fontSize: 15,color: Colors.white),
                              ),
                              trailing: SizedBox(
                                width: 100,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () => update(documentSnapshot),
                                      icon: Icon(
                                        Icons.edit,color: Colors.greenAccent,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () =>
                                          delete(documentSnapshot.id),
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ), //edittind button
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: create,
        backgroundColor: Colors.indigo,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  // create a method
  Dialog mydialog({
    required String name,
    required String condition,
    required VoidCallback onpressed,
  }) =>
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade200,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.red,
                      ))
                ],
              ),
              TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white70,
                  labelText: "Enter Name",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.green, width: 2)),
                  prefixIcon: Icon(
                    Icons.contacts_rounded,
                    color: Colors.blueGrey.shade500,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: positioncontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white70,
                  labelText: "Enter Your Position",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.green, width: 2)),
                  prefixIcon: Icon(
                    Icons.work,
                    color: Colors.blueGrey.shade500,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: onpressed, child: Text(condition)),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      );
}
