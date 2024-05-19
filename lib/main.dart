// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // funcitons & methods
  void userTapped() {
    print("User tapped!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp( /* const is ignored in this project */
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: userTapped,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple[200],
              child: Center(child: Text("Tap me !"),)
            ),
          ),
        ),
      ),
    );
  }
}