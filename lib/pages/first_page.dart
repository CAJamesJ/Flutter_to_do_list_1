// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st Page")),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            //Common to place a drawer head here
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              ),
            ),

            // home page list tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                // pop the drawer
                Navigator.pop(context);
                // go to home page
                Navigator.pushNamed(context, '/homepage');
              },
            ),

            //setting page list tile
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () {
                // pop the drawer
                Navigator.pop(context);
                // go to home page
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
          ],
        ),
      )
    );
  }
}
