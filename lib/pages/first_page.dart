// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:introduction/pages/home_page.dart';
import 'package:introduction/pages/profile_page.dart';
import 'package:introduction/pages/settings.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //this leeps track of the current selected  pages
  int _selectedIndex = 0;

  //method to update selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // the pages we have in our app
  final List _pages = [
    //homepage
    HomePage(),
    //profile
    Profile(),
    //settings
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: _pages[_selectedIndex],

      /*
      body: Center(
          child: ElevatedButton(
        child: Text("Go to Second Page"),
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
        )),
      */

      //using drawer to navigate to other pages
      /*
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 50,
                color: Colors.grey[800],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                //pop the drawer
                Navigator.pop(context);
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
              },
            )
          ],
        ),
      ),
      */

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
