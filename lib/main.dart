// ignore_for_file: prefer_const_constructors

import 'package:bmi/bmi_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
     debugShowCheckedModeBanner: false,
      home: BmiScreen(),
      //home:BMIResult()
    );
  }
}



