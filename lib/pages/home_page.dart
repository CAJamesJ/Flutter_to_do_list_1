import 'package:flutter/material.dart';
import 'package:to_do_list_1/pages/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Center(child: Text('TO DO'),), //apple gives text at the center but pixel, I have to center it.
        elevation: 0, //not happening on pixel, but apples does, hiding shadow
      ),
      body: ListView(
        children: [
          ToDoTile(
            taskName: "Make Tutorial",
            taskCompleted: true,
            onChanged: (p0) {},
          ),
          ToDoTile(
            taskName: "Do Exercise",
            taskCompleted: false,
            onChanged: (p0) {},
          ),
        ],
      ),
    );
  }
}