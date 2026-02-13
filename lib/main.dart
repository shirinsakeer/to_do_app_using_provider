import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app_using_provider/controller/todocontroller.dart';
import 'package:to_do_app_using_provider/view/todoscreen.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => Todocontroller(),child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home:Todoscreen(),
    );
  }
}
