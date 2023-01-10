import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Grid(),
  ));
}
class Grid extends StatelessWidget{
  
  var images = [
   "https://images.squarespace-cdn.com/content/v1/5d9767b1eb25db6ebdc03a70/1588817684139-VD5DBT6V5MS6FI0LS62G/endgame.png",
   "https://images.squarespace-cdn.com/content/v1/5d9767b1eb25db6ebdc03a70/1588817684139-VD5DBT6V5MS6FI0LS62G/endgame.png",
   "https://images.squarespace-cdn.com/content/v1/5d9767b1eb25db6ebdc03a70/1588817684139-VD5DBT6V5MS6FI0LS62G/endgame.png",
   "https://images.squarespace-cdn.com/content/v1/5d9767b1eb25db6ebdc03a70/1588817684139-VD5DBT6V5MS6FI0LS62G/endgame.png",
   "https://images.squarespace-cdn.com/content/v1/5d9767b1eb25db6ebdc03a70/1588817684139-VD5DBT6V5MS6FI0LS62G/endgame.png",
   "https://images.squarespace-cdn.com/content/v1/5d9767b1eb25db6ebdc03a70/1588817684139-VD5DBT6V5MS6FI0LS62G/endgame.png",
   "https://images.squarespace-cdn.com/content/v1/5d9767b1eb25db6ebdc03a70/1588817684139-VD5DBT6V5MS6FI0LS62G/endgame.png",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: const Text("My Grid"),
      ),
      body: GridView.builder(
       padding: const EdgeInsets.all(20),

        itemCount: images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20
          ),
        itemBuilder: (context,index){
         return Image.network(images[index]);
        }
      )
    );
    
  }

}