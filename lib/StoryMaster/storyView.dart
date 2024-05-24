import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';


class StoryView extends StatefulWidget {
  const StoryView({super.key});

  @override
  State<StoryView> createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        title: Text("Story Master",style:TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey,width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey,width: 1.0),
                  borderRadius: BorderRadius.circular(20)
                ),
                  labelText: 'Search Here..',
                prefixIcon:Icon(Icons.search,color: Colors.grey,),
                fillColor: Colors.white38,
                filled: true,
                ),
              ),
             Expanded(
               child: ListView.builder(
                 itemCount: getStoryList.length,
                   itemBuilder: (context,index){
                 return Container(
                   margin: EdgeInsets.all(3),
                   height: 150,
                   width: MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(5.0),
                     boxShadow: [BoxShadow(
                         color: Colors.black.withOpacity(0.2),
                         spreadRadius: 6,
                         blurRadius: 9,
                         offset: Offset(0,3)
               
               
                     )],
               
                   ),
                   child: Text(getStoryList[index]['projectName'].toString()),
               
               
                 );
               }),
             )
          ],
        ),
      ),
    );
  }
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
  }

}
