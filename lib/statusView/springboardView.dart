import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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


Column(
  children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20.0), // Rounded corners
          border: Border.all(color: Colors.grey),  // Optional: Add border
        ),

        child: TextField(decoration: InputDecoration(
          border: InputBorder.none,
          labelText: 'Search Here...',
          prefixIcon: Icon(Icons.search,color: Colors.indigo,),
        ),
      ),
    ),

   Container(
    child: Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

),
    Container(
    margin: EdgeInsets.symmetric(vertical: 25.0),
    height: 150.0,
    child: ListView(
    scrollDirection: Axis.horizontal,
      children: <Widget>[

      Container(
      width: 148,
      margin: EdgeInsets.all(20.0),

      decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(20.0),
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Icon(Icons.message,color:Colors.white,size:40),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Text("Total Assigned",style: TextStyle(color: Colors.white,fontSize: 14),),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Text("Project",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),),
      ),

    ],
    ),
    ),
    Container(
    width: 148,
    margin: EdgeInsets.all(20.0),

    decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(20.0),
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: <Widget>[
    Padding(
    padding: const EdgeInsets.all(4.0),
    child: Icon(Icons.task,color:Colors.white,size:40),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 20.0),
    child: Text("To Be Started",style: TextStyle(color: Colors.white,fontSize: 14),),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 20.0),
    child: Text("Task",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),),
    ),

    ],
    ),
    ),

      Container(
        width: 148,
        margin: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: new Stack(
          children: <Widget>[

          ],
        ),
      ),
      Container(
        width: 148,
        margin: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          color: Colors.yellowAccent,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: new Stack(
          children: <Widget>[

          ],
        ),
      ),
      Container(
        width: 148,
        margin: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          color: Colors.purpleAccent,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: new Stack(
          children: <Widget>[

          ],
        ),
      ),

    ],
),
    ),
    Padding(
      padding: const EdgeInsets.only(bottom: 30.0,right: 100),
      child: Container(
        child: Text("Current Date Backlog Status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

      ),
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
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.grey[200],
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person),
              ),
              trailing: Text(" In progress",textAlign: TextAlign.end,
                style:TextStyle(
                color: CupertinoColors.link,backgroundColor: Colors.grey,
              ),),
              title: Row(
                children: [
              Padding(
              padding: const EdgeInsets.only(bottom: 150.0),
                child: Container(
                  width: 5,

                ),
              )
                ],
              ),
            ),
          );
        },
      ),
    ),
      ]
    ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color:Colors.grey),
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
