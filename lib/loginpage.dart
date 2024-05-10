import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:untitled2/homepage.dart';




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
  TextEditingController usernameController = TextEditingController();
  TextEditingController userpassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
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
                    const Text("ERA UNIVERSITY",style: TextStyle(color:Colors.red,fontWeight: FontWeight.bold
                    ,fontSize: 20),),

                    const Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text("Student Management System",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Enrollment No./Student ID",
                        style:TextStyle(fontSize: 12,color: Colors.indigoAccent,fontWeight: FontWeight.bold,),
                        textAlign:TextAlign.start,),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,bottom: 10),

                      child: TextFormField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          hintText: "Enrollment No./Student ID",hintStyle: const TextStyle(fontSize: 14),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
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
                        onChanged: (val){
                          print(val);
                        },
                      ),
                    ),

                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Password",style:TextStyle(fontSize: 12,
                          color: Colors.indigoAccent,fontWeight: FontWeight.bold,),)),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0,top: 10),
                      child: TextFormField(
                     controller: userpassController,
                        decoration: InputDecoration(
                          hintText: "Password",hintStyle: const TextStyle(fontSize: 14),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),

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
                    validator: (faireena){
                          if(faireena!.isEmpty) {
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
                          if(usernameController.text.toString()=='12345' && userpassController.text.toString()=='123'){
                            // MaterialPageRoute(builder:
                            //     (context) => const Homepage()
                            //
                            //
                            // );

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Homepage()),
                            );
                          }
                          // if(formKey.currentState!.validate()){
                          //   Get.snackbar(
                          //      usernameController.text.toString(),
                          //     userpassController.text.toString(),
                          //     //'Login Failed',
                          //     snackPosition: SnackPosition.BOTTOM,
                          //     colorText: Colors.black,
                          //     backgroundColor: Colors.white, borderRadius: 50.0,
                          //   );
                          //
                          //
                          // }else{
                          //
                          // }
                         //Redirect to next page after login

                        },
                        child: const Text('Login',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    InkWell(
                        onTap: (){
                         // print('hello');
                        },
                        child: const Text('Forgot Password?', style: TextStyle(fontSize: 14,
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

