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
      print("ApiResponse:"+data.toString());
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
  Future <void> deleteData() async{
    final res= await http.delete(Uri.parse("https://api.medvantage.tech:7097/api/StoryMaster/GetAllStory?userID=464"));
    var response = jsonDecode(res.body);
    if(response.statusCode==200){
      print("Data deleted sucessfully!");
    }
    else{
      print("Failed to delete data.Error:${response.statusCode}");
    }
  }
}