import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;



class AddprojectController extends GetxController{


List userList=[];
List get getuserList=> userList;
 set updateuserList(List val){
  userList=val;

}
  getData() async{
    final res = await http.get(Uri.parse("https://api.medvantage.tech:7097/api/ProjectMaster/GetProjectByUser?userID=464"));
    var data = jsonDecode(res.body);
    print(data.toString());
    updateuserList=data['responseValue'];
    print("8888888888"+getuserList.toString());


  }
  List listList=[];
 List get getlistList=> listList;
 set updatelistList(List val){
   listList=val;
 }
 userData() async{
   final res= await http.get(Uri.parse("https://api.medvantage.tech:7097/api/ModuleMaster/GetAllModule?projectId=186&userId=464"));
   var data = jsonDecode(res.body);
   print(data.toString());
   updatelistList=data['responseValue'];
   print("99999999"+getlistList.toString());
 }

}