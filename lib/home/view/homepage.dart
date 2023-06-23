import 'package:flutter/material.dart';

class HomePg extends StatefulWidget {
   HomePg({super.key});
  final TextEditingController _taskController=TextEditingController();
  final TextEditingController _descriptionController=TextEditingController();
  final _formKey=GlobalKey<FormState>();
  @override
  State<HomePg> createState() => _HomePgState();
}

class _HomePgState extends State<HomePg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("ToDo"),
      ),
      body: Form(
        
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Task",
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Description",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {
              
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