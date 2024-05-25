import 'package:flutter/material.dart';
import 'package:to_do_list_1/pages/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller; 

  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller, // to access teh controller in my homepage so creating variable
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),

            // buttons -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                MyButton(text: "Save", onPressed: onSave,),

                const SizedBox(width: 8,),

                //cancel button
                MyButton(text: "Cancel", onPressed: onCancel,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}