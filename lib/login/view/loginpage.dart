import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo/home/view/homepage.dart';
import 'package:todo/signup/view/signpage.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final TextEditingController _usernameController=TextEditingController();
  final TextEditingController _passController=TextEditingController();
  final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("ToDo"),
      ),
      body:
      Form(
        key: _formKey,
         child: Column(
          
           children: [
            SizedBox(
              height: 20,
            ),
             TextFormField(
              validator: (value) {
                if (value!.isEmpty){
                  return "Enter username";
                }
              },
              controller: _usernameController,
              decoration: InputDecoration(
       
                hintText: "Username",
              ),
              
             ),
             SizedBox(
          height: 20,
             ),
             TextFormField(
              validator: (value) {
                if(value!.isEmpty){
                  return "Enter password";
                }
              },
              controller: _passController,
          decoration: InputDecoration(
            labelText: "Password",
            
          ),
          obscureText: true,
             ),
         SizedBox(
          height: 10,
             ),
             TextButton(onPressed: () {
          
             }, child: Text("Forgot Password")),
             SizedBox(
          height: 10,
             ),
             ElevatedButton(onPressed: () async{
              try {
                final _auth=FirebaseAuth.instance;
                final userRef=await _auth.signInWithEmailAndPassword(email: _usernameController.text, password:_passController.text);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePg(),));
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid username or Password"),));
              }
          
             }, child: Text("LOGIN")),
         SizedBox(
          height: 10,
             ),
             Text("or"),
         SizedBox(
          height: 10,
             ),
             ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp(),));
             }, child: Text("SIGN UP")),
       
           ],
         ),
       ),
      
      
    
    );
  }
}