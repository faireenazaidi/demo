import 'package:flutter/material.dart';
import 'package:untitled2/homepage.dart';
import 'package:untitled2/splashscreen.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: MyHomePage()

        );

  }
  }
