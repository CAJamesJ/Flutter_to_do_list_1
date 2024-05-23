import 'package:flutter/material.dart';
import 'pages/todo_page.dart';


void main() {
  // WidgetsFlutterBinding.ensureInitialized(); /* This fixed expecting binder but got null error */
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoPage(),
    );
  }
}