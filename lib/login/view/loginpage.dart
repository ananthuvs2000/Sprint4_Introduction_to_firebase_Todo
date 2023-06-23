import 'package:flutter/material.dart';
import 'package:todo/home/view/homepage.dart';
import 'package:todo/signup/view/signpage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("ToDo"),
      ),
      body:
      
       Column(
        
         children: [
          SizedBox(
            height: 20,
          ),
           TextFormField(
            
            decoration: InputDecoration(

              hintText: "Username",
            ),
            
      ),
      SizedBox(
        height: 20,
      ),
      TextFormField(
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
      ElevatedButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePg(),));
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
      
      
    
    );
  }
}