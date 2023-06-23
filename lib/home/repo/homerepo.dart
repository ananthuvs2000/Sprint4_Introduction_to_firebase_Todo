import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class TaskRepo{
  final _auth=FirebaseAuth.instance;
  final CollectionReference taskRef=FirebaseFirestore.instance.collection("Task Collection");
Future<void>createTask(String title,String description,BuildContext context)async{
  final uuid=Uuid();
  final tid=uuid.v4();
  final date=DateTime.now();
  try {
    await taskRef.doc(tid).set({
      "task title":title,
      "description":description,
      "Date":date,
      "user id":_auth.currentUser!.uid,
    });
  } catch (e) {
     throw Exception("No tasks added");
        
  }
}
}
