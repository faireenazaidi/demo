import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'categoryController.dart';

class SpringboardView extends StatefulWidget {
  const SpringboardView({super.key});

  @override
  State<SpringboardView> createState() => _SpringboardViewState();
}

class _SpringboardViewState extends State<SpringboardView> {
  get index => null;
  final SpringboardController springboardController = Get.put(SpringboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
        toolbarHeight:60,
        backgroundColor: Colors.white,
       title: Column(

         crossAxisAlignment: CrossAxisAlignment.start,
         children: const [
           Text("Faireena Zaidi"),
           Text("flutter developer",style: TextStyle(fontSize: 15),)

         ],
       ),
        leading: Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://img.freepik.com/premium-vector/office-girl-vector-illustration-cartoonish-office-girl_890100-772.jpg'),
            ),
          ),
        ),

body:


Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
    children: [
         TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
            ),
          labelText: 'Search Here...',
          prefixIcon: Icon(Icons.search,color: Colors.indigo,),
        ),
              ),

     const Padding(
       padding: EdgeInsets.only(right: 250.0),
       child: Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
     ),


      SizedBox(
        height: 120,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: springboardController.abc.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            var data = springboardController.abc[index];
          return  Container(
                    width: 130,
                    margin: EdgeInsets.all(12.0),

                    decoration: BoxDecoration(
                      color: springboardController.abc[index]['color'],
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(data['icon'],color:Colors.white,size:30),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Text(data['totalTask'].toString(),style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(data['name'].toString(),style: TextStyle(color: Colors.white,fontSize: 14),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(data['topic'].toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                        ),

                      ],
                    ),
                  );
        },),
      ),




         const Padding(
           padding: EdgeInsets.only(right: 100),
           child: Text("Current Date Backlog Status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
         ),
      Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: TextField(decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0.0),
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.grey,width: 2.0),

          ),

          labelText: 'Search Here...',
          prefixIcon: Icon(Icons.search,color: Colors.indigo,),
        ),),
      ),
      Expanded(
        child: ListView.builder(
          itemCount: springboardController.employeName.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
               // height: 150,
                 width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 6,
                      blurRadius: 9,
                      offset: Offset(0,3)
                  )],
                ),

                child: Row(
                  children: [
                    Container(
                      height: 100,width: 3,
                      color: Colors.red,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0,top: 5),
                            child: CircleAvatar(
                                  backgroundImage: NetworkImage(springboardController.employeName[index]['image'].toString()),
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(springboardController.employeName[index]['name'].toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ],
                      ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Text(springboardController.employeName[index]['identity'].toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60.0),
                          child: Text(springboardController.employeName[index]['work'].toString(),),
                        ),
                        Divider(
                          color: Colors.indigo,
                          thickness: 1,
                          indent: 10,
                          endIndent: 10,

                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8),
                          child: Container(
                            height: 1,
                            width: Get.width*0.85,
                            color: Colors.indigo,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text('05-17-2024'),
                            ),
                            SizedBox(width: Get.width*0.38,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Center(child: Text("In progress",style: TextStyle(color: Colors.blue),)),
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey[200],

                                ),
                              ),
                            )

                          ],
                        )
                      ],
                    ),
                  ],
                )
                // ListTile(
                //   leading: Padding(
                //     padding: const EdgeInsets.only(left:8.0),
                //     child: CircleAvatar(
                //       child: Icon(
                //         Icons.person,
                //       ),
                //     ),
                //   ),
                //
                //   trailing: const Text(" In progress",textAlign: TextAlign.end,
                //     style:TextStyle(
                //     color: CupertinoColors.black,backgroundColor: Colors.grey,
                //   ),
                //   ),
                //   title: Row(
                //     children: [
                //
                //   Padding(
                //   padding: const EdgeInsets.only(bottom: 150.0),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         Column(
                //           children: [
                //             Text(springboardController.employeName[index]['name'].toString(),),
                //                 Text(springboardController.employeName[index]['identity'].toString(),)
                //           ],
                //          // Text(springboardController.employeName[index]['name'.toString()],),
                //
                //         ),
                //       ],
                //     )
                //
                //
                //   ),
                //     ],
                //   ),
                // ),
              ),
            );
          },
        ),
      ),
        ]
      ),
),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Icon(Icons.home_filled,color:Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,color: Colors.grey,),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu,color: Colors.grey,),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people,color: Colors.grey,),
            label: 'Profile',
          ),
        ],
      ),
    );







  }

}
