import 'dart:async';
import 'package:flutter/material.dart';

import 'homepage.dart';

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => const Homepage()
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
