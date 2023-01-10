import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Cardd(),
  ));
}
class Cardd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
            child: Column(
            children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Expanded(
                  child: Card(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Heart Shaker"), 
                    ),
                   ),
                  ),
                  Expanded(
                  child: Card(
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ListTile(
                      leading: Icon(Icons.notification_important),
                      title: Text("Heart Shaker"),
                    ),),),
                  ],
                ),
               Row(
              children: const [
                Expanded(
                  child: Card(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ListTile(
                      leading: Icon(Icons.linked_camera_rounded),
                      title: Text("Heart Shaker"), 
                    ),
                   ),
                  ),
                  Expanded(
                  child: Card(
                    color: Color.fromARGB(255, 255, 0, 102),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ListTile(
                      leading: Icon(Icons.bookmark_outline_sharp),
                      title: Text("Heart Shaker"),
                    ),),),
                  ],
                ),
                 Row(
              children: const [
                Expanded(
                  child: Card(
                    color: Color.fromARGB(255, 243, 121, 33),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ListTile(
                      leading: Icon(Icons.color_lens_sharp),
                      title: Text("Heart Shaker"), 
                    ),
                   ),
                  ),
                  Expanded(
                  child: Card(
                    color: Color.fromARGB(255, 55, 0, 255),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ListTile(
                      leading: Icon(Icons.collections_bookmark_sharp),
                      title: Text("Heart Shaker"),
                    ),),),
                  ],
                ),
                 Row(
              children: const [
                Expanded(
                  child: Card(
                    color: Color.fromARGB(255, 243, 33, 198),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      title: Text("Heart Shaker"), 
                    ),
                   ),
                  ),
                  Expanded(
                  child: Card(
                    color: Color.fromARGB(255, 0, 255, 221),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ListTile(
                      leading: Icon(Icons.mail),
                      title: Text("Heart Shaker"),
                    ),),),
                  ],
                ),
                 Row(
              children: const [
                Expanded(
                  child: Card(
                    color: Color.fromARGB(255, 243, 194, 33),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ListTile(
                      leading: Icon(Icons.image),
                      title: Text("Heart Shaker"), 
                    ),
                   ),
                  ),
                  Expanded(
                  child: Card(
                    color: Color.fromARGB(255, 255, 115, 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ListTile(
                      leading: Icon(Icons.notification_important),
                      title: Text("Heart Shaker"),
                    ),),),
                  ],
                ),
                 Row(
              children: const [
                Expanded(
                  child: Card(
                    color: Color.fromARGB(255, 243, 33, 159),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ListTile(
                      leading: Icon(Icons.music_off_outlined),
                      title: Text("Heart Shaker"), 
                    ),
                   ),
                  ),
                  Expanded(
                  child: Card(
                    color: Color.fromARGB(255, 41, 112, 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ListTile(
                      leading: Icon(Icons.file_open_outlined),
                      title: Text("Heart Shaker"),
                    ),),),
                  ],
                ),
               
              ]
            ),),
            );
            }
          }