import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/loginvalid.dart';



void main() {
  runApp(MaterialApp(     //root element
    theme: ThemeData(primarySwatch: Colors.blue),    //full theme will be pink
    debugShowCheckedModeBanner: false,
    home: Splash(),      //when we create constructor automatically class will be created using create class
  ));
}

class Splash extends StatefulWidget{   //a splash screen disappears after a period of time to new page
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();


    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginValidation() ));
    });
  }
  @override
  Widget build(BuildContext context){
       return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage("https://mir-s3-cdn-cf.behance.net/project_modules/disp/496ecb14589707.562865d064f9e.png")
            )
             
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children:  [
                Image.asset("assets/images/chat-bot.png",height: 100,width: 100,),           //fetching image from assets
               //const Image(image: AssetImage("assets/images/chat-bot.png"),),
               // Icon(
                //Icons.account_circle,
               // color: Colors.pink,
                //size: 90,
               // ),
               const Text("MYAPP", style: TextStyle(fontSize: 40, color: Colors.green)),
              ],
            ),
          ),
        ),
       );
  }
}
