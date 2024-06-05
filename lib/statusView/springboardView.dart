import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:untitled2/statusView/profileView.dart';

import 'springboardController.dart';

class SpringboardView extends StatefulWidget {
  const SpringboardView({super.key});

  @override
  State<SpringboardView> createState() => _SpringboardViewState();
}
class _SpringboardViewState extends State<SpringboardView> {
  get index => null;
  final SpringboardController springboardController = Get.put(SpringboardController());
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(
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
       title: const Column(

         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text("Faireena Zaidi"),
           Text("flutter developer",style: TextStyle(fontSize: 15),)

         ],
       ),
        leading: const Padding(
          padding: EdgeInsets.only(left:8.0),
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
            contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(color: Colors.grey, width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(color: Colors.grey, width: 2.0),
            ),
          labelText: 'Search Here...',
          prefixIcon: const Icon(Icons.search,color: Colors.indigo,),
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
                    margin: const EdgeInsets.all(12.0),

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
                                child: Text(data['totalTask'].toString(),style: const TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(data['name'].toString(),style: const TextStyle(color: Colors.white,fontSize: 14),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(data['topic'].toString(),style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
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
          contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.grey,width: 2.0),

          ),

          labelText: 'Search Here...',
          prefixIcon: const Icon(Icons.search,color: Colors.indigo,),
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
                      offset: const Offset(0,3)
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
                            child: Text(springboardController.employeName[index]['name'].toString(),style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ],
                      ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Text(springboardController.employeName[index]['identity'].toString(),style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold, ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60.0),
                          child: Text(springboardController.employeName[index]['work'].toString(),),
                        ),
                        const Divider(
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
                            const Padding(
                              padding: EdgeInsets.all(9.0),
                              child: Text('05-17-2024'),
                            ),
                            SizedBox(width: Get.width*0.38,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: const Center(child: Text("In progress",style: TextStyle(color: Colors.blue),)),
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
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu,color: Colors.grey,),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
                icon: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  ProfileView()),
                    );
                  },
                    child: Icon(Icons.people,color: Colors.grey,)),
            label: 'Profile',
          ),
        ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 30,
          onTap: _onItemTapped,
          elevation: 5

      ),
    );







  }

}
