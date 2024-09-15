import 'dart:io';
import 'package:crud1/bottembar%5D/home.dart';
import 'package:crud1/crud/crud.dart';
import 'package:crud1/login/theme/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  //Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyAgs3g4XCNAAYjKQ-ESIJLEd92xxs6XWaE",
              appId: "1:566489030887:android:a03f239ba643ce6dcf0242",
              messagingSenderId: "566489030887",
              projectId: "crud1-5ff73"),
        )
      : Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );
  //Run Your App
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: pdfop(),
     //home:MyLogin(),
     //home : MyRegister(),
      home:const home(),
      // home:StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(),builder:(context,snapshot){
      //   if(snapshot.hasData){
      //     return const crudop();
      //   }else{
      //     return const welcome();
      //   }
      // },),
      //home: crudop(),
      // home:otpUI(verificationid: '',),
      // home: phoneotp()
    );
  }
}
//
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var userneme = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.deepPurpleAccent,
                  Colors.blue,
                  Colors.green,
                ],
              )),
              width: 300,
              child: TextField(
                controller: userneme,
                decoration: InputDecoration(
                  hintText: ("Enter Username"),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.green, width: 2)),
                  prefixIcon: Icon(
                    Icons.contacts_rounded,
                    color: Colors.blue.shade900,
                  ),
                ),
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              width: 300,
              child: TextField(
                controller: password,
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: ("Enter password"),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.green, width: 2)),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                    ),
                    onPressed: () {},
                  ),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.blue.shade900,
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  String uname = userneme.text.toString();
                  String pass = password.text;
                  print("Username :- $uname, pass :- $pass");
                },
                child: Text("login"))
          ],
        ),
      ),
    );
  }
}
