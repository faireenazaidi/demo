import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled2/splashscreen.dart';
import 'package:http/http.dart' as http;

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white70,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
            toolbarHeight: 70,
            backgroundColor: Colors.indigoAccent,
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.camera_alt_outlined,
                          color: Colors.white),
                    ),
                    const Text(
                      "Attendance",
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
                        backgroundImage: AssetImage('assets/girl...png',),

                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(
                              "Faireena Zaidi",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.normal,color: Colors.white),
                            ),
                          ),
                        ],
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
                        child: Text(
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
          Stack(
            children: [
              Container(
                height: 150,
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
                        backgroundImage: AssetImage('assets/girl...png',),

                      ),
                   Text("Faireena Zaidi",style: TextStyle(color: Colors.white),),
                      Text("Student ID: 2021070104009",style: TextStyle(color: Colors.white),),
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
         padding: const EdgeInsets.only(right: 290.0,top: 10),
         child: Text("My Details",style:TextStyle(fontSize:18,fontWeight: FontWeight.bold)),
       ),
       Padding(
         padding: const EdgeInsets.only(right:330.0),
         child: Text('21421',style: TextStyle(fontWeight:FontWeight.bold),),
       ),
      const ListTile(
       leading: const Icon(Icons.email_outlined,color:Colors.indigoAccent,),
         title: const Text("Email",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),
        subtitle: Text("faireenazaidi@gmail.com",style:TextStyle(color: Colors.grey)),
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

    );
  }
}
loginDemoFunction()async{
  Map<String,String>header={
    "companyToken":"value"
  };
  Map<String,dynamic>body={
    "key":"value123"
  };
  var response=await http.post(
    Uri.parse("https://jsonplaceholder.typicode.com/users"),
    headers: header,
    body: body
  );
  if(response.statusCode==200){
    //navigate to a different page;
  }
}
