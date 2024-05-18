
import 'package:flutter/material.dart';

class SpringboardView extends StatefulWidget {
  const SpringboardView({super.key});

  @override
  State<SpringboardView> createState() => _SpringboardViewState();
}

class _SpringboardViewState extends State<SpringboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight:50,
        backgroundColor: Colors.white,
       title: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text("Faireena Zaidi"),
           Text("flutter developer",style: TextStyle(fontSize: 15),)
         ],
       ),
        leading: Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: CircleAvatar(
            child: Icon(
              Icons.person,
            ),
          ),
        ),

        ),





      );

  }

}
