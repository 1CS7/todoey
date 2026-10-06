
import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task.dart';

class Data extends ChangeNotifier{
  late String task;

  final List<Task> _taskList = [];

  UnmodifiableListView<Task> get taskList => UnmodifiableListView(_taskList);

  int get taskCount => taskList.length;

  void updateTask(String newTask){
    task = newTask;
    notifyListeners();
  }

  List<Task> getTasks() => taskList;

  void addTask(String newTask){
    _taskList.add(Task(task: newTask));
    notifyListeners();
  }

  void deleteTask(int index){
    _taskList.removeAt(index);
    notifyListeners();

  }

  void toggleTask(int index){
    _taskList[index].toggleTask();
    notifyListeners();
  }

  String displayNumberOfTasks() =>    taskList.length <= 1? '${taskList.length} task': '${taskList.length} tasks';

}