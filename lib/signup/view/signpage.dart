import 'package:flutter/material.dart';
import 'package:todo/login/view/loginpage.dart';
import 'package:todo/signup/repo/signuprepo.dart';

class SignUp extends StatelessWidget {
 SignUp({super.key});
  final TextEditingController _nameController=TextEditingController();
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _phoneController=TextEditingController();
  final TextEditingController _passController=TextEditingController();
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
                  return "Please enter the name";
                }
              },
              controller: _nameController,
              decoration: InputDecoration(
                hintText: "Name",
                
              ),
            ),
            TextFormField(
              validator: (value) {
                if(value!.isEmpty){
                  return "Enter email";
                }
              },
              controller: _emailController,
              decoration: InputDecoration(
                hintText: "Email",      
              ),
            ),
              TextFormField(
                 validator: (value) {
                if(value!.isEmpty){
                  return "Enter Phone number";
                }
              },
              controller: _phoneController,
              decoration: InputDecoration(
                hintText: "Phone Number",      
              ),
            ),
                      TextFormField(
                         validator: (value) {
                if(value!.isEmpty){
                  return "Enter the password";
                }
              },
                        controller: _passController,
              decoration: InputDecoration(
                hintText: "Password",      
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: ()async {
             if(_formKey.currentState!.validate()){
              await SignupRepo().createUser(_nameController.text, _emailController.text, _phoneController.text, _passController.text, context);
              
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Login(),));
             }

             
            }, child: Text("SIGN UP")),
          ],
        ),
      ),
    );
  }
}