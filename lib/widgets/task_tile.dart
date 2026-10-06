import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({required this.task,required this.isChecked, required this.checkboxCallback, required this.longPressCallback});
  final String task;
  late final bool isChecked;
  final Function(bool?) checkboxCallback;
  final Function() longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: GestureDetector(
        onLongPress: longPressCallback,
        child: Text(
          task,
          style: TextStyle(
            decoration: isChecked? TextDecoration.lineThrough: null
          ),

        ),
      ),
      trailing:  Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback
      )
    );
  }
}
