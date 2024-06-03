import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:untitled2/homepage.dart';
import 'package:http/http.dart' as http;



class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.indigoAccent,
    foregroundColor: Colors.black87,
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
  final formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController(
      text: '2021020100074');
  TextEditingController userPassController = TextEditingController(
      text: "12345");

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.white,
          appBar: AppBar(

            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50))),

            toolbarHeight: 150,
            backgroundColor: Colors.indigoAccent,
            centerTitle: true,
          ),

          body:
          SingleChildScrollView(

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              child: Form(
                key: formKey,

                child: SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      const Text("ERA UNIVERSITY", style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold
                          , fontSize: 20),),

                      const Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text("Student Management System",
                          style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold),),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Enrollment No./Student ID",
                          style: TextStyle(fontSize: 12, color: Colors
                              .indigoAccent, fontWeight: FontWeight.bold,),
                          textAlign: TextAlign.start,),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10),

                        child: TextFormField(
                          controller: usernameController,
                          decoration: InputDecoration(
                            hintText: "Enrollment No./Student ID",
                            hintStyle: const TextStyle(fontSize: 14),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Colors.grey.shade500)
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.grey.shade500)
                            ),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.grey.shade500)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.grey.shade500)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.grey.shade500)
                            ),
                          ),
                          validator: (val) {
                            print(val);
                            if (val!.isEmpty) {
                              return "Please Enter Your Enrollment No./Student Id";
                            }
                            else {
                              return null;
                            }
                          },
                          onChanged: (val) {
                            print(val);
                          },
                        ),
                      ),

                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Password", style: TextStyle(fontSize: 12,
                            color: Colors.indigoAccent, fontWeight: FontWeight
                                .bold,),)),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0, top: 10),
                        child: TextFormField(
                          controller: userPassController,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: const TextStyle(fontSize: 14),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10),

                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.grey.shade500)
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.grey.shade500)
                            ),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.grey.shade500)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.grey.shade500)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.grey.shade500)
                            ),
                          ),
                          validator: (faireena) {
                            if (faireena!.isEmpty) {
                              return "Please Enter Your Password";
                            }
                            else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 9.0),
                        child: TextButton(
                          style: flatButtonStyle,
                          onPressed: () async {
                            loginapi();
                          },
                          child: const Text('Login', style: TextStyle(
                              color: Colors.white),),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            // print('hello');
                          },
                          child: const Text(
                            'Forgot Password?', style: TextStyle(fontSize: 14,
                              color: Colors.indigoAccent, fontWeight: FontWeight
                                  .bold),))
                    ],
                  ),
                ),
              ),
            ),
          ),

        ),
      );
  }


  loginapi() async {
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST',
        Uri.parse('http://182.156.200.178:168/API/Login/LoginAuthentication'));
    request.body = json.encode({
      "userName": usernameController.text.toString(),
      "password": userPassController.text.toString(),
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    print("ffffffffffffffff");

    if (response.statusCode == 200) {
      String responseBody = await response.stream.bytesToString();
      print(responseBody);
      var data = jsonDecode(responseBody);
      print("ApiResponse:" + data.toString());

      updateUserList = data['responseValue'];
      print(getUserList.toString());
      if (data['status'].toString() == "1") {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Homepage()),
        );
      }
      else {
        print("ERROR @@@@@@@@@@@@@@@@@@@@@@@");
        // Fluttertoast.showToast(
        //     msg: "This is Center Short Toast",
        // );

        print(response.reasonPhrase);
      }
    }
    else{
      print("ERRORRRRR@@@");
      Fluttertoast.showToast(
        msg: "This is Center Short Toast",
      );
    }
  }
}


Map userList = {};
Map get getUserList => userList;
set updateUserList(Map val){
  userList = val;
}





