import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
    home: GridEx(),
    ));
}
class GridEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: GridView.extent(
      maxCrossAxisExtent: 500,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(10),

      children: [
        Container(color: Colors.pinkAccent,),
        Container(color: Colors.purple,),
        Container(color: Colors.lime,),
        Container(color: Colors.redAccent,),
        Container(color: Colors.blueAccent,),
        Container(color: Colors.greenAccent,),
      ],
    ),  
   );
  }

}