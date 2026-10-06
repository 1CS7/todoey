
class Task{
  final String task;
  bool isCompleted;

  Task({required this.task,this.isCompleted = false});

  void toggleTask(){
    isCompleted = !isCompleted;
  }
}