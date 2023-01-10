import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
    home: Stackk(),
    ));
}
class Stackk extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Center(
      child: Stack(
        children: [
          Container(
           color: Colors.green,
           width: 400,
           height: 400,
          ),
        Positioned(
          right: 30,
          bottom: 30,
          child: Container(
            color: Colors.yellow,
            width: 80,
            height: 80,
            ),
            ),
        Positioned(
          left: 30,
          top: 30,
          child: Container(
            color: Colors.red,
            width: 80,
            height: 80,
            ),
          ),    
        ]
      ),
      
       ) 
      
    );
   
  }

}