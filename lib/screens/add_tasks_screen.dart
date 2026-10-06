
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/data.dart';

class AddTasksScreen extends StatelessWidget {

  String? userTask;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 5.0,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlueAccent)
                )
              ),
              onChanged: (value){
                userTask = value;
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.lightBlueAccent,
              ),
              onPressed: (){
                Provider.of<Data>(context,listen: false).addTask(userTask!);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  fontSize: 15.0
                ),
                )
            )
          ],
        ),
      ),
    );
  }
}
