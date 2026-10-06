import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        Consumer<Data>(

          builder: (context,taskData,child) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return TaskTile
                  (
                    task: taskData.taskList[index].task,
                    isChecked: taskData.taskList[index].isCompleted,
                    checkboxCallback: (checkboxState) {
                      taskData.toggleTask(index);
                    },
                    longPressCallback: (){
                      taskData.deleteTask(index);
                    },

                );
            },
              itemCount: taskData.taskCount,
            );
          }
        );
  }
}