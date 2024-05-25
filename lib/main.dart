import 'package:flutter/material.dart';
import 'package:to_do_list_1/pages/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.yellow, //maybe change?
        appBarTheme: AppBarTheme(color: Colors.yellow),
      ),
    );
  }
}