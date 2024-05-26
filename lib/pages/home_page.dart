import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_list_1/data/database.dart';
import 'package:to_do_list_1/pages/util/dialog_box.dart';
import 'package:to_do_list_1/pages/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //reference the hive box
  final _myBox = Hive.box('mybox');
  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {
    // if this is the 1st time ever opening the app, then create default data
    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      //there already exists data
      db.loadData();
    }

    super.initState();
  }

  // text controller
  final _controller = TextEditingController();

  // // list of todo tasks
  // List toDoList = [
  //   ["Make Tutorial", false],
  //   ["Do Exercise", false],
  // ];

  // checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDataBase();
  }

  void saveNewTask() {
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDataBase();
  }

  void cancelNewTask() {
    setState(() {
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  // create a new task
  void createNewTask() {
    showDialog(
      context: context, 
      builder:(context) {
        return DialogBox(
          controller: _controller, //   creating text controller
          onSave: saveNewTask,
          onCancel: cancelNewTask, //   one line to cancel
        ); //create the function in util
      },
    );
  }

  // delelte a task
  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('TO DO'),
        centerTitle: true,
        elevation: 0, //not happening on pixel, but apples does, hiding shadow
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder:(context, index) {
          return ToDoTile(
            taskName: db.toDoList[index][0], 
            taskCompleted: db.toDoList[index][1], 
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
            // isLast: index == toDoList.length - 1,
          );
        },
      ),
    );
  }
}