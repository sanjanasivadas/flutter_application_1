import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
    home: GridCustom(),
    ));
}
class GridCustom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: GridView.custom(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2),
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) {
        var images;
        return Image.network("https://images.squarespace-cdn.com/content/v1/5d9767b1eb25db6ebdc03a70/1588817684139-VD5DBT6V5MS6FI0LS62G/endgame.png"
         );
      },
      childCount: 8,
      ),
      padding: const EdgeInsets.all(10),
      shrinkWrap: true,
    ),
   );
  }
}