import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app_using_provider/controller/todocontroller.dart';

class Todoscreen extends StatelessWidget {
  Todoscreen({super.key});
  TextEditingController todoc=TextEditingController();


  @override
  Widget build(BuildContext context) {final todoprovider=context.watch<Todocontroller>();
    return Scaffold(
      body: Center(
        child: Column(
           children: [
              SizedBox(height: 40),
              Text("To Do",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
              SizedBox(height: 30),
               SizedBox(
                width: 500,
                 child: TextField(
                        controller: todoc,
                         decoration: InputDecoration(
                          hintText: "Text here",
                           filled: true,
                           fillColor: Colors.white,
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(15),
                        
                             borderSide: BorderSide.none,
                           ),
                         ),
                       ),
                       
               ),
               SizedBox(
                height: 20,
               ),
               ElevatedButton(onPressed: () {
                 context.read<Todocontroller>().addtodo(todoc.text);
               }, child: Text("Add")),
            Expanded(
              child: ListView.builder(
                itemCount: todoprovider.todolist.length,
                itemBuilder: (context, index) {
                return ListTile(title: Text(todoprovider.todolist[index].task),trailing: IconButton(onPressed: () {
                  context.read<Todocontroller>().deletetodo(todoprovider.todolist[index]);
                }, icon: Icon(Icons.delete)),);
              },),
            )
           ],
           
        ),
        
      ),
    );
  }
}