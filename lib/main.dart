// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:to_do_list_1/pages/first_page.dart';
import 'package:to_do_list_1/pages/home_page.dart';
import 'package:to_do_list_1/pages/settings_page.dart';


void main() {
  // WidgetsFlutterBinding.ensureInitialized(); /* This fixed expecting binder but got null error */
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp( /* const is ignored in this project */
      debugShowCheckedModeBanner: false,
      home: FirstPage(), /*Used to be our Scaffold, but we can direct to the first page now */
      routes: { /*This routes allow us to not having Navigator.push(); function in pages */
        '/firstpage' : (context) => FirstPage(),
        '/homepage' : (context) => HomePage(),
        '/settingspage' : (context) => SettingsPage(),
      },
    );
  }
}