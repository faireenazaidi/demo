import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/StoryMaster/AddProject/AddProjectController.dart';

import '../../Widgets/my_custom_sd.dart';


class AddProjectView extends StatefulWidget {
  const AddProjectView({super.key});

  @override
  State<AddProjectView> createState() => _AddProjectViewState();
}
class _AddProjectViewState extends State<AddProjectView> {
  AddprojectController addprojectController = AddprojectController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addprojectController.getData();
    addprojectController.userData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading: InkWell(
         onTap: ()
    {
      Navigator.pop(context);
    },
         child: Icon(Icons.arrow_back,color: Colors.blue,),
       ),
        title: Text("Add Project Story Summary",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Project",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16),),
                Text("*",style: TextStyle(color: Colors.red,fontSize: 20),),

              ],
            ),
            MyCustomSD(

              label:"Select Project",
              listToSearch: addprojectController.getuserList,
              valFrom: 'projectName',
              onChanged: (value) {
                print(value);
              }

            ),
            Row(
              children: [
                Text("Module",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                Text("*",style: TextStyle(color: Colors.red,fontSize: 20),),

              ],
            ),
            MyCustomSD(
                label:"Select Module Type",
                listToSearch: addprojectController.getuserList,
                valFrom: 'projectName',
                onChanged: (value) {
                  print(value);
                }
            ),
            Text("I want to able to")
          ],
        ),

      )

    );
  }
}
