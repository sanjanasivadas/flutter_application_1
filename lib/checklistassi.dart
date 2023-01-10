import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CheckList(),
  ));
}

class CheckList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("CheckBox List Tile Demo"),
        ),
        body: CheckListt(),
      ),
    );
  }
}
 class CheckListt extends StatefulWidget{

  @override
  State<CheckListt> createState() => _CheckListtState();
}

class _CheckListtState extends State<CheckListt> {
 var images = [
 "https://cdn-icons-png.flaticon.com/512/226/226770.png?w=360",
 "https://storage.googleapis.com/cms-storage-bucket/a9d6ce81aee44ae017ee.png",
 "https://cdn-icons-png.flaticon.com/512/226/226769.png",
 "https://cdn-icons-png.flaticon.com/512/5968/5968379.png",
 "https://cdn-icons-png.flaticon.com/512/2165/2165458.png",
 ];

 List<String> text = [
"Android",
"Flutter",
"iOS",
"PHP",
"Node"
 ];

 var check = [
    isCheck = false,
    isCheck = false,
    isCheck = false,
    isCheck = false,
    isCheck = false,

  ];
   static set isCheck(bool isCheck) {}
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder:  (context, index) {
          return Card(
           child: CheckboxListTile(
            checkColor: Colors.white,
            activeColor: Colors.pink,
            secondary: CircleAvatar(
            backgroundImage: NetworkImage(images[index]),),
            title: Text(text[index]),
            value: check[index],
             onChanged: (bool? value) { 
               setState(() {
                check[index] = value!;
              });
              },
            
           )
            );
            },),
          );
        }
    
  }
