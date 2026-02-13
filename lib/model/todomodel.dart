class Todomodel {
  final String task;
  bool completed;
  Todomodel({required this.task,this.completed=false});
  void completedtask(){
    completed=!completed;
  }
}
