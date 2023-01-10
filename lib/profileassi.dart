import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:ProfileEx(),
    debugShowCheckedModeBanner: false,
  ));
}

class ProfileEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    
    appBar: AppBar(
    leading: const Icon(Icons.menu),
    centerTitle: true,
    title:  const Text("Profile",style: (TextStyle(fontWeight: FontWeight.bold)),),
    actions: const [
      //Icon(Icons.menu),
      Icon(Icons.more_vert),
    ],
    ),

    body: Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.center,
    children: [
      Container(
        child:
        Image.asset("assets/images/bgimage.jpg",fit:BoxFit.cover),
      ),
      const Positioned(
        top: 200,
        child: CircleAvatar(
          minRadius: 80,
          backgroundImage: NetworkImage("https://images.news18.com/ibnlive/uploads/2022/07/5b64ef07d608085cf4b239ddfeda4a8d.png"),  
        ),),
        Positioned(
          top: 260,
          left: 60,
          child: FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {},
              child: const Icon(Icons.message)
            ,)
           ), 
        Positioned(
          top: 260,
          right: 60,
          child: FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {},
              child: const Icon(Icons.add)
            ,)
           ), 
        const Positioned(
          top: 370,
          child: Text("David Beckham",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20),)
           ),
        const Positioned(
          top: 400,
          child: Text("model/superstar",
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 13),)
           ),
     ],
   ),);
  }
}