import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;



class AddprojectController extends GetxController{


List userList=[];
List get getuserList=> userList;
 set updateuserList(List val){
  userList=val;
  update();

}
  getData() async{
    final res = await http.get(Uri.parse("https://api.medvantage.tech:7097/api/ProjectMaster/GetProjectByUser?userID=464"));
    var data = jsonDecode(res.body);
    print(data.toString());
    if(data['status']==1) {
      updateuserList = data['responseValue'];
      print("8888888888" + getuserList.toString());
    }




  }
  List listList=[];
 List get getlistList=> listList;
 set updatelistList(List val){
   listList=val;
   update();
 }
 userData() async{
   print(projectId);
   final res= await http.get(Uri.parse("https://api.medvantage.tech:7097/api/ModuleMaster/GetAllModule?projectId=${projectId.toString()}&userId=464"));
   var data = jsonDecode(res.body);
   print(data.toString());
   if(data['status']==1)
   updatelistList=data['responseValue'];
   print("moduleList"+getlistList.toString());
 }

 List abc = [
   { "id":"1",
     'name':"Urgent"
   },
   {"id":"2",
     "name": "Important"
   },
   {"id":"3",
     "name": "Must"
   }];

 String priorityId="";
 String get getpriorityId=> priorityId;
 set updatepriorityId( String val){
   priorityId=val;
   update();
 }




 String projectId="";
String get getProjectId => projectId;
 set updateProjectId(String val){
   projectId=val;
 }
String moduleId="";
String get getModuleId => moduleId;
set updateModuleId (String val){
  moduleId=val;
}
List saveList =[];
List get getSaveList=>saveList;
set updateSaveList(List val){
  saveList=val;
}

SaveData()async {


   var headers = {
    'Content-Type': 'application/json'
  };

   print(wantabletoC.value.text.toString());
   print(sothatC.value.text.toString());
   print(getpriorityId.toString());
   print(wantabletoC.value.text.toString());
  var request = http.Request('POST', Uri.parse(
      'https://api.medvantage.tech:7097/api/StoryMaster/InsertStory'));

  request.body = json.encode({
    "ProjectId": getProjectId.toString(),
    "ModuleId" : getModuleId.toString(),
    "WantAbleTo": wantabletoC.value.text.toString(),
    "SoThat": sothatC.value.text.toString(),
    "priorityID": getpriorityId.toString(),
    "externalFileURL": efURLC.value.text.toString(),
    "WebURL": wURLC.value.text.toString(),
    "AppURL":appstoreC.value.text.toString(),
    "playURL": playstoreC.value.text.toString(),
    "Remark": noteC.value.text.toString(),
    "UserID": "464"
  });
  request.headers.addAll(headers);
  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    print("API is runing");
    print(await response.stream.bytesToString());
  } else {
    print("API is not runing");
    print(response.reasonPhrase);
  }
}
TextEditingController wantabletoC = TextEditingController();
TextEditingController sothatC = TextEditingController();
TextEditingController efURLC = TextEditingController();
TextEditingController wURLC = TextEditingController();
TextEditingController playstoreC = TextEditingController();
TextEditingController appstoreC = TextEditingController();
TextEditingController noteC = TextEditingController();

}