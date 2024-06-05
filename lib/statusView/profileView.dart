import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/statusView/springboardView.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text("My Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: 500,
                  color: Colors.indigoAccent,
                ),
                Positioned(
                  top: 30,
                  left: 10,
                  right: 10,
                  child: Container(
                    height: 200,
                    width: 500,

                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                      child:CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 12.0,
                        child: Icon(Icons.person),
                      )
                  ),
                ),


                    ]
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                height: 400,
                width: 500,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Email Id",style: TextStyle(color: Colors.grey[800]),),
                      subtitle: Text("faireenazaidi@criteriontechnologoies.com",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                    ListTile(
                      title: Text("Employee Id",style: TextStyle(color: Colors.grey[800]),),
                      subtitle: Text("7860",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                    ListTile(
                      title: Text("Designation",style: TextStyle(color: Colors.grey[800]),),
                      subtitle: Text("Flutter Developer",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                    ListTile(
                      title: Text("Mobile No.",style: TextStyle(color: Colors.grey[800]),),
                      subtitle: Text("8173822136",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    )
                  ],
                ),


              ),
            )
          ],
        ),

      ),



    );
  }
}
