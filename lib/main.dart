import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar:
        PreferredSize (
          preferredSize: Size.fromHeight(200.0),

    child:AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
         actions: [
           IconButton(
             onPressed: (){},
             icon: const Icon(Icons.camera_alt_outlined,color: Colors.white),

        ),


],   title: const Text("Dashboard",style:TextStyle(color: Colors.white),
 
          ),
      leading: const CircleAvatar(

        backgroundImage: AssetImage('mypic/Picture1.jpg'),

      ),

      ),
        ),
        drawer: Drawer(

          child:ListView(
            padding: EdgeInsets.zero,
            children:<Widget> [
              UserAccountsDrawerHeader(accountName: Text("Faireena zaidi"), accountEmail: Text("faireena@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.indigo,
                child: Text(
                  "F",style: TextStyle(fontSize: 40.0),

                ),
              ),
              ),
              ListTile(
                leading:Icon(Icons.edit_calendar),title:Text("Attendance"),
                onTap:()
                  {
                    Navigator.pop(context);
                  },
              ),
              ListTile(
                leading:Icon(Icons.message_sharp),title:Text("Complaint Form"),
                onTap:()
                {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading:Icon(Icons.lock_outline),title:Text("Change Password"),
                onTap:()
                {
                  Navigator.pop(context);
                },
              ),

            ],


            ),
          ),

          ),
        );

  }
  }
