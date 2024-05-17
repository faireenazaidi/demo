import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/homepage.dart';
import 'package:untitled2/splashscreen.dart';
import 'package:http/http.dart' as http;

import 'JsonData/jsonView.dart';

var client = http.Client();
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     //theme: ThemeData.dark()

     // home: MyHomePage()
     home: DemoView()

        );

  }
  }
