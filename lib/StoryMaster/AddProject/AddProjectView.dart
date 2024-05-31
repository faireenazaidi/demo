import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
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
// to show alert in dialog box
//   void _showAlert(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Alert!'),
//           content: Text('Please select a project'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text('OK'),
//             ),
//           ],
//         );
//       },
//     );
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading: InkWell(
         onTap: ()
    {
      Navigator.pop(context);
    },
         child: const Icon(Icons.arrow_back,color: Colors.blue,),
       ),
        title: const Text("Add Project Story Summary",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body:
      GetBuilder(
        init: addprojectController,
        builder: (_) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
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

                      if(value!=null){
                        addprojectController.updateProjectId = value['projectId'].toString();
                        print("ProjectId:"+addprojectController.getProjectId.toString());
                        print(value);
                      }

                    }

                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Text("Module",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        Text("*",style: TextStyle(color: Colors.red,fontSize: 20),),

                      ],
                    ),
                  ),
                  MyCustomSD(
                      label:"Select Module Type",
                      listToSearch: addprojectController.getlistList,
                      valFrom: 'moduleName',
                      onChanged: (value) {
                        if(value!=null){
                          addprojectController.updateModuleId=value['projectID'].toString();
                          print("ModuleId"+addprojectController.getModuleId.toString());
                        }

                      }
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Text("I want to able to",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        Text("*",style: TextStyle(color: Colors.red,fontSize: 20),),
                      ],
                    ),
                  ),
                   TextField(
                    controller: addprojectController.wantabletoC,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      border: OutlineInputBorder(),
                      hintText: "Please write here",
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top:10.0),
                    child: Row(
                      children: [
                        Text("So That",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        Text("*",style: TextStyle(color: Colors.red,fontSize: 20),),
                      ],
                    ),
                  ),
                   TextField(
                    controller: addprojectController.sothatC,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      border: OutlineInputBorder(),
                      hintText: "Please write here",
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Text("Priority",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        Text("*",style: TextStyle(color: Colors.red,fontSize: 20),),
                      ],
                    ),
                  ),
                     MyCustomSD(
               listToSearch: addprojectController.abc,
               valFrom: 'name',
               onChanged: (val){
                 addprojectController.updatepriorityId=val['id'].toString();
                 print(val);
               }),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Text("External File URL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      ],
                    ),
                  ),
                  TextField(
                    controller: addprojectController.efURLC,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      border: OutlineInputBorder(),
                      hintText: "Please write here",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Text("Web URL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      controller: addprojectController.wURLC,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Text("Play store URL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      controller: addprojectController.playstoreC,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Text("App store URL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      controller: addprojectController.appstoreC,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Text("Note",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      ],
                    ),
                  ),
                  TextField(
                    controller: addprojectController.noteC,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Please write here",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Implement cancel button functionality
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                        child: Text('Cancel',style: TextStyle(color: Colors.indigoAccent),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: (){
                            if(addprojectController.getProjectId.toString()==""){
                              Get.defaultDialog(
                                title: "Alert!",
                                middleText: "Please select Project",
                                actions: [
                                  TextButton(onPressed:(){
                                    Navigator.pop(context);
                                  },
                                      child: Text("OK")),
                                ]
                              );
                            }
                            addprojectController.SaveData();
                            if(addprojectController.getModuleId.toString()==""){
                              Get.defaultDialog(
                                title: "Alert!",
                                middleText: "Please select Module",
                                actions: [
                                  TextButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, child: Text("Ok"))
                                ],
                              );
                            }
                            //Get.back();
                            //Navigator.push(context,MaterialPageRoute(builder:(context)=> const SaveView()));

                            // Implement save button functionality
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigoAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),
                          child: Text('Save',style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ],
                  )



                ],
              ),

            ),
          );
        }
      )

    );
  }

  priorityWidget(){

  }
}
 



