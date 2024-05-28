

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:untitled2/StoryMaster/AddProject/AddProjectView.dart';
import 'package:untitled2/StoryMaster/storyController.dart';


class StoryView extends StatefulWidget {
  const StoryView({super.key});

  @override
  State<StoryView> createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {

  StoryController storyController = StoryController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    storyController.getData();

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
      body: GetBuilder(
        init: storyController,
        builder: (_) {
          return Padding(
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
                     shrinkWrap: true,
                     itemCount: storyController.getStoryList.length,
                       itemBuilder: (context,index){
                     return Container(
                       margin: EdgeInsets.all(10),
                       //height: 200,
                       width: MediaQuery.of(context).size.width,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Colors.white,
                         boxShadow: [BoxShadow(
                             color: Colors.black.withOpacity(0.3),
                             spreadRadius: 5,
                             blurRadius: 10,
                             offset: Offset(0,4)


                         )],
                       ),

                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                 Text(storyController.getStoryList[index]['projectName'].toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),
                                  Row(
                                    children: [
                                      Icon(Icons.menu,size:20,weight: 0.1,color: Colors.blue,),
                                      SizedBox(
                           width: 10,
                         ),

                                      Icon(Icons.restore_from_trash_rounded,size:20,weight: 0.1,color: Colors.red,),
                                    ],

                                  ),

                                ]
                               ),
                             Text(storyController.getStoryList[index]['moduleName'].toString(),style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.bold),),
                             Divider(
                               thickness: 0.7,
                               color: Colors.grey,
                             ),
                             Text("Story",style: TextStyle(fontWeight: FontWeight.bold),),
                             Text(storyController.getStoryList[index]['wantAbleTo'].toString(),style: TextStyle(fontSize: 14,color: Colors.grey,),),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2.0,top: 20),
                                      child: Icon(Icons.calendar_month,color: Colors.green,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20.0,left: 10),
                                      child: Text("2022-09-28",style: TextStyle(color: Colors.grey),),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20,right: 5),
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.orange,
                                        child: Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 15,),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child:Text(storyController.getStoryList[index]['prioprity'].toString(),style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.bold),),
                                    )
                                  ],
                                )
                               ],
                             )



                           ],
                         ),
                       ),

                     );
                   }),
                 ),

              ],
            ),
          );
        }
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0.5,
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: Colors.indigoAccent,
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=> AddProjectView()));

      },


      )

    );
  }

}
