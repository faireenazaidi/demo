import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'homepage.dart';


class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.indigoAccent,
    foregroundColor: Colors.black87,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50))),

          toolbarHeight:150,
          backgroundColor: Colors.indigoAccent,
          centerTitle: true,
          actions: [],


        ),

        body:
        SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
            child: Form(
              key: formKey,

              child: SizedBox(
                height: MediaQuery.of(context).size.height/2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text("ERA UNIVERSITY",style: TextStyle(color:Colors.red,fontWeight: FontWeight.bold
                    ,fontSize: 20),),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text("Student Management System",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Enrollment No./Student ID",
                        style:TextStyle(fontSize: 12,color: Colors.indigoAccent,fontWeight: FontWeight.bold,),
                        textAlign:TextAlign.start,),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,bottom: 10),

                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enrollment No./Student ID",hintStyle: TextStyle(fontSize: 14),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.grey.shade500)
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.grey.shade500)
                          ),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.grey.shade500)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.grey.shade500)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.grey.shade500)
                          ),
                        ),
                        validator: (val){
                          print(val);
                          if(val!.isEmpty){
                            return "Please Enter Your Enrollment No./Student Id";
                          }
                          else
                          {
                            return null;
                          }
                        },
                      ),
                    ),

                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Password",style:TextStyle(fontSize: 12,
                          color: Colors.indigoAccent,fontWeight: FontWeight.bold,),)),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0,top: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Password",hintStyle: TextStyle(fontSize: 14),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.grey.shade500)
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.grey.shade500)
                          ),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.grey.shade500)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.grey.shade500)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.grey.shade500)
                          ),
                        ),
                    validator: (fairyna){
                          if(fairyna!.isEmpty) {
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
                        onPressed: () {
                          if(formKey.currentState!.validate()){
                          }
                        },
                        child: Text('Login',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    InkWell(
                        onTap: (){
                          print('hello');
                        },
                        child: Text('Forgot Password?', style: TextStyle(fontSize: 14,
                            color: Colors.indigoAccent,fontWeight: FontWeight.bold),))
                  ],
                ),
              ),
            ),
          ),
        ),

      ),
    );

  }
}

