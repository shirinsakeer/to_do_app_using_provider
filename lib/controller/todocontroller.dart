import 'package:flutter/material.dart';
import 'package:to_do_app_using_provider/model/todomodel.dart';

class Todocontroller with ChangeNotifier {
  final List<Todomodel> _todolist = [];
  List<Todomodel> get todolist => _todolist;
  void addtodo(String task) {
    _todolist.add(Todomodel(task: task));
    notifyListeners();
  }
  void deletetodo(Todomodel task){
    _todolist.remove(task);
    notifyListeners();
  }
}
