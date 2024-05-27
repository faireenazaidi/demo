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
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150,
                width: 370,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: DropdownButton<String>(
                  dropdownColor: Colors.indigoAccent,
                  elevation: 12,
                  borderRadius: BorderRadius.circular(20),
                  items: <String>['One', 'Two', 'Three', 'Four'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                    });
                  },
                  isExpanded: true,
                ),
              ),
            ),
    ],
    ),

    );
  }
}
