import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
  home: List_with_Builder(),));
}

class List_with_Builder extends StatelessWidget{

var datas = <String>['DATA 1','DATA 2','DATA 3'];
var colors = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("List2")),
    body: ListView.builder(
      itemCount: datas.length,
      itemBuilder: (BuildContext cntx,int index){
        return Container(
         height: 50,
         color: Colors.purple[colors[index]],
         child: Center(child: Text(datas[index]),),
        );
      }
   ));
  }

}