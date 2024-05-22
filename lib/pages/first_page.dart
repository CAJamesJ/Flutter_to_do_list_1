// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:to_do_list_1/pages/home_page.dart';
import 'package:to_do_list_1/pages/profile_page.dart';
import 'package:to_do_list_1/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //this method updates the new selected index
  void _navigatedBottomBar(int index) { //we want to use set state, so it has to be changed to stateful widget
    setState(() {
      _selectedIndex = index;
    });
  }

  // this keeps track of the selected index
  int _selectedIndex = 0;

  // the pages we have in our app
  final List _pages = [
    // homepage
    HomePage(),

    // profilepage
    ProfilePage(),

    // settingspage
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st Page")),
      body: _pages[_selectedIndex],  // From the _pages, index 0 is home, 1 is profile, 2 is settings
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigatedBottomBar, //how is this connected to _pages, how does it know without input
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),

          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),

        ],
      ),
    );
  }
}
