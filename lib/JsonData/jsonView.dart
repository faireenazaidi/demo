

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'jsonController.dart';

class DemoView extends StatefulWidget {

  const DemoView({super.key});

  @override
  State<DemoView> createState() => _DemoViewState();
}

class _DemoViewState extends State<DemoView> {

  get index => null;

  //Instantiate your controller
  final JasonController jsoncontroller=Get.put(JasonController());
//for toggle btn

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(

        leading: InkWell(
          onTap: (){
           Navigator.pop(context);
          },
            child: const Icon(Icons.arrow_back, color: Colors.white,)),

        backgroundColor: Colors.indigoAccent,
        title: const Text(
          "Flutter Listview with Json", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [],
      ),

      body:
      ListView.builder(
        itemBuilder: (context, index) {
          return Card(


           color: Colors.white,

            child: Padding(
              padding: const EdgeInsets.only(top: 32,bottom: 32,left: 16,right: 16),
              child: ListTile(
                title: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 150.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100/2),
                              image:  DecorationImage(
                                fit: BoxFit.cover,

                               image: NetworkImage(jsoncontroller.demoList[index]['image'].toString()),
                              ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        children: <Widget>[

                          Padding(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: Text(jsoncontroller.demoList[index]['name'.toString()],style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: 1,
                            indent: 20,
                            endIndent: 20,

                          ),
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text("Language: "+jsoncontroller.demoList[index]['language'.toString()],style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                          ),
                          Text("ID: "+jsoncontroller.demoList[index]['id'.toString()],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),

                          Text(jsoncontroller.demoList[index]['bio'.toString()],style: const TextStyle(fontSize: 14,fontWeight:FontWeight.w500 ),overflow: TextOverflow.clip,textAlign: TextAlign.justify,textDirection: TextDirection.ltr,),
                         //Text(jsoncontroller.demoList[index]['version'.toString()],style: const TextStyle(fontSize: 14,fontWeight:FontWeight.w500 ),overflow: TextOverflow.clip,textAlign: TextAlign.justify,textDirection: TextDirection.ltr,),

                        ],


                      ),
                    ),
              ]
                ),




              )
              ),
            );

        },
        itemCount: jsoncontroller.demoList.length,

      ),
    );
  }
}


