// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( /* const is ignored in this project */
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          // title: Center(
          //   child: Text("MY APP BAR"),
          // ),
          title: Text("MY APP BAR"),
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.logout))
          ],
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration( //If you want further decorations, put color in decorations
              color: Colors.deepPurple,
              //curve the corners
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(25),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 64,
              ),
          ),
        ),
      ),
    );
  }
}