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
         children: [
           Text("Faireena Zaidi"),
           Text("flutter developer",style: TextStyle(fontSize: 15),)

         ],
       ),
        leading: Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: CircleAvatar(
            child: Icon(
              Icons.person,
            ),
          ),
        ),
        ),
body:


Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
    children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20.0), // Rounded corners
            border: Border.all(color: Colors.grey),  // Optional: Add border
          ),

          child: TextField(
            decoration: InputDecoration(
            border: InputBorder.none,
            labelText: 'Search Here...',
            prefixIcon: Icon(Icons.search,color: Colors.indigo,),
          ),
                ),
      ),

     const Padding(
       padding: EdgeInsets.only(right: 250.0),
       child: Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
     ),


      SizedBox(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: springboardController.abc.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            var data = springboardController.abc[index];
          return  Container(
                    width: 148,
                    margin: EdgeInsets.all(20.0),

                    decoration: BoxDecoration(
                      color: springboardController.abc[index]['color'],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              Icon(data['icon'],color:Colors.white,size:40),
                              Text(data['totalTask'].toString(),style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),

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
        child: Container(
          decoration: BoxDecoration(
        color: Colors.grey[200],
      borderRadius: BorderRadius.circular(20.0), // Rounded corners
      border: Border.all(color: Colors.grey),  // Optional: Add border
      ),

          child: TextField(decoration: InputDecoration(
            border: InputBorder.none,
            labelText: 'Search Here...',
            prefixIcon: Icon(Icons.search,color: Colors.indigo,),
          ),),
        ),
      ),
      Expanded(
        child: ListView.builder(
          itemCount: springboardController.itemList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                 width: MediaQuery.of(context).size.width,

                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20.0),

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
                    children: [
                      CircleAvatar(
                            child: Icon(
                              Icons.person,
                            ),
                          ),
                      Text(springboardController.employeName[index]['name'].toString(),),
                    ],
                  ),
                    Text(springboardController.employeName[index]['identity'].toString(),),
                    Text(springboardController.employeName[index]['work'].toString(),),
                    Divider(
                      color: Colors.black,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(DateTime.now().toString()),
                        Container(
                          child: Center(child: Text("In progress",)),
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,

                          ),
                        )

                      ],
                    )
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
        items: <BottomNavigationBarItem>[
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
