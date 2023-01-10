import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
    home: GridCount(),
    ));
}
class GridCount extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      shrinkWrap: true,

      children: List.generate(20, (index) {
       return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://cdn.statusqueen.com/mobilewallpaper/thumbnail/mobile_wallpaper408-805.jpg"),
              fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0),),
          ),
        ),
        );
      }
      )
   ),);
  }
  }