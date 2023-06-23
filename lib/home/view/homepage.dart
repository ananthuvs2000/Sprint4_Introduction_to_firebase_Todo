import 'package:flutter/material.dart';
import 'package:todo/home/repo/homerepo.dart';

class HomePg extends StatelessWidget {
   HomePg({super.key});
  final TextEditingController _taskController=TextEditingController();
  final TextEditingController _descriptionController=TextEditingController();
  final _formKey=GlobalKey<FormState>();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("ToDo"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if(value!.isEmpty){
                  return "Add a task";
                }
              },
              controller: _taskController,
              decoration: InputDecoration(
                hintText: "Task",
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty){
                  return "Add a decription";
                }
              },
              controller: _descriptionController,
              decoration: InputDecoration(
                hintText: "Description",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: ()async {
              if (_formKey.currentState!.validate()){
               await TaskRepo().createTask(_taskController.text, _descriptionController.text, context);
               _taskController.clear();
               _descriptionController.clear();
              }
            }, child: Text("Add")),
      
          ],
          
        ),
      ),
      
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },
      child: Icon(Icons.add),
      ),
      
    );
  }
}