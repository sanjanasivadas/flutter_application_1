import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Alignmentt()
  ));
}
class Alignmentt extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("Align Widget"),
    
    ),
    body: Center(
      child: Container(
        height: 240,
        width: 240,
        color: Colors.blue,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Image.asset("assets/images/apple.png",
          width: 100,),
          ),
      ),
    ),
   );
  }

}