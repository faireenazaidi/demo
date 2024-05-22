import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled2/Login%20Page/loginpage.dart';

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => const LogInPage()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          color: Colors.indigoAccent,
          child:FlutterLogo(size:1000,textColor: Colors.white70,)
      ),
    );
  }
}
