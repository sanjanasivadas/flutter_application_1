import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginassi.dart';
import 'package:flutter_application_1/regassi.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}
class Splash extends StatefulWidget{
  @override
  State<Splash> createState() => _SplashState(); 
   
  }
  class _SplashState extends State<Splash> {

  @override
   void initState(){
    super.initState();
    Timer(const Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SignupPage() ));
    });
  }
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: SingleChildScrollView(
       child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text("Hello There!", style: TextStyle(fontSize: 40, color: Colors.black)),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text("Automatic identy verification which enable you to verify your identity",
               style: TextStyle(fontSize: 20, color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("assets/images/login2.png",height: 200,width: 200,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: ElevatedButton(onPressed: (){}, child:  Text("Login")),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(onPressed: (){}, child:  Text("Sign Up")),
            ),
          ],
          )),
       )
    );
  }
}
  
  


  