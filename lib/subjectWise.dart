import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SubjectWise extends StatefulWidget {
  const SubjectWise({super.key});

  @override
  State<SubjectWise> createState() => _SubjectWiseState();
}

class _SubjectWiseState extends State<SubjectWise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back, color: Colors.white,)),
        title: Text("Subject Wise Attendance",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.indigoAccent,
      ),
      body:
       Column(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.start
             ,

           )
         ],
       )

    );
  }
}
