import 'dart:ui';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:TransparentAppBar()
  ));
}

class TransparentAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          title: const Text("TransparentAppBar"),
         // backgroundColor: Colors.transparent, or
          backgroundColor: Colors.purple.withOpacity(0.3), //we can increase the value with which darkness will be increased in color. color value ranges btwn 0 to 1
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add,color: Colors.white12,))],
        ),
        body: Image.asset(
          "assets/images/backgroundimg.jpg",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ));
  }
}