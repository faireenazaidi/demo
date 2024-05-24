import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:untitled2/JsonData/jsonView.dart';
import 'package:untitled2/Login%20Page/loginpage.dart';
import 'package:untitled2/splashscreen.dart';
import 'package:untitled2/statusView/springboardView.dart';

import 'StoryMaster/storyView.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
//print(getUserList.toString())
class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        backgroundColor: Colors.white70,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: AppBar(
              toolbarHeight: 100,
              backgroundColor: Colors.indigoAccent,
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const DemoView()),);
                            },
                        icon: const Icon(Icons.info_outline_rounded,
                            color: Colors.white),
                      ),
                      const Text(
                        "Information",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
              title: const Text(
                "Dashboard",
                style: TextStyle(color: Colors.white),
              ),
              leading: InkWell(
                  onTap: () {
                    _key.currentState!.openDrawer();
                  },
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ))),
        ),
        drawer: Drawer(
          child: Column(
              // padding: EdgeInsets.zero,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
             Material(
                  color: Colors.indigoAccent,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, top: 30, bottom: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage: NetworkImage('https://img.freepik.com/premium-vector/office-girl-vector-illustration-cartoonish-office-girl_890100-772.jpg'),
      
                        ),
      
                      ],
                    ),
                  ),
                ),
                // const UserAccountsDrawerHeader(
                //   decoration: BoxDecoration(color: Colors.indigo),
                //   accountName: Text(
                //     "Faireena zaidi",
                //     textAlign: TextAlign.end,
                //   ),
                //   accountEmail: Text("faireena@gmail.com"),
                //   currentAccountPicture: CircleAvatar(
                //     backgroundColor: Colors.yellow,
                //     foregroundColor: Colors.black,
                //     child: Text(
                //       "F",
                //       style: TextStyle(fontSize: 40.0),
                //     ),
                //   ),
                // ),
                ExpansionTile(
                  leading: const Icon(Icons.edit_calendar),
                  title: const Text("Attendance"),
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.edit_calendar),
                      title: const Text("Subject Wise Attendance"),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.edit_calendar),
                      title: const Text("Cumulative Attendance"),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.edit_calendar),
                      title: const Text("Daily Attendace"),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                ListTile(
                  leading: const Icon(Icons.message_sharp),
                  title: const Text("Complaint Form"),
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => const SplashScreen(),
                    //   ),
                    // );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.lock_outline),
                  title: const Text("Change Password"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
      
                  leading: const Icon(Icons.stacked_bar_chart),
                  title: const Text("Backlog Status"),
                  onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  SpringboardView()));
                  },
                ),
                ListTile(
                  leading: const Icon (Icons.history),
                  title: const Text("Story Mastor"),
                  onTap:(){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=> StoryView()));
                }
                ),



                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 100,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              textStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          onPressed: () {},
                          child:
                          Text(
                            "Logout",
                            style: TextStyle(color: Colors.white),
      
                          )),
                    ),
                  ),
                )
              ]),
        ),
        body: Column(
          children: [
           //Text(getUserList.toString()),
          // Text(getUserList['login'][0]['studentName'].toString()),
            Stack(
              children: [
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(50.0),bottomRight: Radius.circular(50.0)),
      
                    color: Colors.indigoAccent,
      
                  ),
                  width: MediaQuery.of(context).size.width,
      
                ),
                Positioned(
                  bottom: 0.1,
                  right: 0.1,
                  left: 0.1,
                  top: 0.1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage('https://img.freepik.com/premium-vector/office-girl-vector-illustration-cartoonish-office-girl_890100-772.jpg',),
      
                        ),
                        Text("Student Name: "+ getUserList['login'][0]['studentName'].toString(),style: TextStyle(color: Colors.white)),
                        Text("Student ID: "+ getUserList['login'][0]['enrollmentNo'].toString(),style: TextStyle(color: Colors.white)),
                        Text("Punchiong ID: "+ getUserList['login'][0]['userName'].toString(),style: TextStyle(color: Colors.white)),
                       // Text("Student ID: 2021070104009",style: TextStyle(color: Colors.white),),
                        Text("Punching ID: 21421",style: TextStyle(color: Colors.white),),
                      ],
                    ),
      
      
                   )
      
                    )
      
      
              ],
            ),
      
      Padding(
        padding: const EdgeInsets.only(top:12.0),
        child: Container(
      width: 400,
      height: 450,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.00),border: Border.all(color:Colors.white),
      
      color: Colors.white,
      ),
      alignment: Alignment.topLeft,
         child:   Column(
       children: [
         Padding(
           padding: const EdgeInsets.only(right: 270.0,top: 10),
           child: Text("My Details",style:TextStyle(fontSize:18,fontWeight: FontWeight.bold)),
         ),
         Padding(
           padding: const EdgeInsets.only(right:320.0),
           child:
      
           Text(getUserList['login'][0]['userId'].toString()),
      
         ),
      
         ListTile(
         leading: const Icon(Icons.email_outlined,color:Colors.indigoAccent,),
           title: const Text("College Name",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),
          subtitle: Text(getUserList['login'][0]['collegeName'].toString(),style: TextStyle(color: Colors.grey)),
          selected: true,
         ),
         Divider(
           color: Colors.grey,
           thickness: 1,
           indent: 20,
           endIndent: 20,
      
         ),
      
         const ListTile(
      leading: const Icon(Icons.calendar_today,color: Colors.indigoAccent,),
      title: const Text("DOB",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),
        subtitle: Text("12-09-2003",style: TextStyle(color: Colors.grey),),
        selected: true,
      ),
         Divider(
           color: Colors.grey,
           thickness: 1,
           indent: 20,
           endIndent: 20,
      
         ),
      
         const ListTile(
           leading: const Icon(Icons.call,color: Colors.indigoAccent,),
           title: const Text("Contact",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),
           subtitle: Text("8173822136",style: TextStyle(color: Colors.grey),),
           selected: true,
         ),
         Divider(
           color: Colors.grey,
           thickness: 1,
           indent: 20,
           endIndent: 20,
      
         ),
      
         const ListTile(
           leading: const Icon(Icons.home_outlined,color: Colors.indigoAccent,),
           title: const Text("Address",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),
           subtitle: Text("38,laxshman prasad road,wazeerganj golaganj,Lucknow",style:TextStyle(color: Colors.grey),),
           selected: true,
         ),
      
           ],
      
         ),
      
      
         ),
      
      
        ),
      
          ],
        ),
      
      ),
    );
  }
}
