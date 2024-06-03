import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class StoryController extends GetxController{


  getData() async {

    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('GET', Uri.parse('https://api.medvantage.tech:7097/api/StoryMaster/GetAllStory?userID=464&projectId=8'));
    request.body = json.encode({
      "userId": 464,
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String responseBody =await response.stream.bytesToString();
      print(responseBody);
      var data = jsonDecode(responseBody);
      print("APIResponse:"+data.toString());
      updateStoryList = data['responseValue'];
      print("getStoryListData"+getStoryList.toString());
    }
    else {
      print(response.reasonPhrase);
    }
  }


  List storyList = [];
  List get getStoryList=>storyList;
  set updateStoryList(List val){
    storyList = val;
    update();
  }
  Future <void> deleteData(id) async{


    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('DELETE', Uri.parse('https://api.medvantage.tech:7097/api/StoryMaster/DeleteStory'));
    request.body = json.encode({
      "id": id,
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String responseBody =await response.stream.bytesToString();
      var data = jsonDecode(responseBody);
      getData();
      print("APIResponse:"+data.toString());

      Get.snackbar(
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
          "Alert!", data['message']);
    }
    else {
      print(response.reasonPhrase);
    }

  }
}