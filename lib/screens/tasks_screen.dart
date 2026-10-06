import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/widgets/tasks_list.dart';
import 'package:todoey/screens/add_tasks_screen.dart';
import 'package:todoey/models/data.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=> SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddTasksScreen(),
              ),
          )
          );
        }
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.lightBlueAccent,
            padding: EdgeInsetsGeometry.only(left: 20,right: 20, top: 30,bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor:Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  )
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 60.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                 Provider.of<Data>(context).displayNumberOfTasks(),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))
              ),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}


