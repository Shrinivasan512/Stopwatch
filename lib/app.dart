import 'package:flutter/material.dart';
import 'package:timer/Screen.dart';



class MyApp extends StatelessWidget{
  MyApp({super.key});

  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen(),
    );
  }

}