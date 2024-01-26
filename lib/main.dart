import 'package:flutter/material.dart'; 
import './question.dart';
//import './answer.dart';
//import './question2.dart';

void main(){
  runApp(const MyApp()); 
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){ 
    return const MaterialApp(  
      home: Question()     
    ); 
  } //build method
}//Class 