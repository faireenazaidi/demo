import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SubjectWise extends StatefulWidget {
  const SubjectWise({super.key});

  @override
  State<SubjectWise> createState() => _SubjectWiseState();
}

class _SubjectWiseState extends State<SubjectWise> {
  String displayText ='Farziba';
  String displayMsg = 'Faireena';
  bool isTextVisible =false;
  bool isMsgVisible = false;
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
        title: Text("Toggle Button",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.indigoAccent,
      ),
      body:
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             ElevatedButton(onPressed: (){
               setState(() {
                 isTextVisible = !isTextVisible;
               });

             },
               style:ElevatedButton.styleFrom(
                 backgroundColor: Colors.green
               ),
               child: Text("Button 1"),
             ),
             if (isTextVisible)
             Text(displayText,style: TextStyle(fontSize: 24),),
             Padding(
               padding: const EdgeInsets.only(top: 80.0),
               child: Row(
                 children: [
                   ElevatedButton(onPressed: (){
                     setState(() {
                       isMsgVisible = !isMsgVisible;
                     });
                   }, child: Text("Button 2")),
                 ],
               ),
             ),
             if (isMsgVisible)
              Text(displayMsg),
           ],
         ),
       ),
    );
  }
}
