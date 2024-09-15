import 'package:crud1/bottembar%5D/pdf.dart';
import 'package:crud1/bottembar%5D/profile.dart';
import 'package:crud1/bottembar%5D/search_page.dart';
import 'package:crud1/bottembar%5D/tech_page.dart';
import 'package:crud1/login/theme/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../login/service/authentication.dart';
import 'home_page.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  //  final GlobalKey<ScaffoldState> _scafoldkey = GlobalKey<ScaffoldState>();

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const home_page(),
    const search_page(),
    const tech_page(),
    const profile_page(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader( decoration: BoxDecoration(
              color: Colors.blue,
            ),child: Text("IT Material Point")),
            ListTile(
              title: const Text('Download'),

              onTap: () {
                // Update the state of the app
                Navigator.push(context,MaterialPageRoute(builder: (context)=>const downloadpdf(),),);
                _onItemTapped(2);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Business'),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app

                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('School'),
              selected: _selectedIndex == 2,
              onTap: () {
                // Update the state of the app

                // Then close the drawer
                Navigator.pop(context);
              },
            ),
             ListTile(
              title: Text("Logout"),
              onTap: (){

                Navigator.pop(context);
              },

            ),
            IconButton(
              onPressed: () async{
                await AuthServices().SignOut();
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>welcome(),),);
              },
              icon: const Icon(Icons.logout,color: Colors.red,size: 30,),
            ),
          ],
        ),
      ),
      appBar: AppBar(

        backgroundColor: Colors.indigo,

        centerTitle: true,
        title:const Text("IT Material Point",style:(TextStyle(color: Colors.white)),),
      ),
      bottomNavigationBar: GNav(
        curve: Curves.easeInOut,
        style: GnavStyle.google,
        gap: 5,
        tabMargin: const EdgeInsets.only(top: 7, bottom: 7),
        activeColor: Colors.black,
        iconSize: 20,
        backgroundColor: Colors.indigo,
        padding: const EdgeInsets.all(18),
        duration: const Duration(milliseconds: 200),
        tabBackgroundColor: Colors.white,
        onTabChange: (index) {
          if (mounted == true) {
            setState(() {
              _selectedIndex = index;
            });
          }
        },
        tabs: const [
          GButton(
            icon: Icons.home,
            iconSize: 20,
            iconColor: Colors.white,
            text: 'Home',
            rippleColor: Colors.cyanAccent
          ),
          GButton(
            icon: Icons.search,
            iconColor: Colors.white,
            text: 'Search',
            rippleColor: Colors.cyanAccent,
          ),
          GButton(
            icon: Icons.language,
            iconColor: Colors.white,
            text: 'Technologies',
            rippleColor: Colors.cyanAccent,
          ),
          GButton(
            icon: Icons.account_circle_outlined,
            iconColor: Colors.white,
            text: 'Profile',
            rippleColor: Colors.cyanAccent,
          ),
        ],
        selectedIndex: _selectedIndex,

      ),
      body: Container(

        color: Colors.teal,
        child: _widgetOptions[_selectedIndex],
      ),
    );
  }
}
