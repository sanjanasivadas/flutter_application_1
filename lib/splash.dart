import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Splash(),
  ));

}

class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: const [
            Icon(Icons.account_tree_rounded,color: Colors.red,size: 95,),
           Text("MYTREE",style: TextStyle(fontSize: 40,color: Colors.green)),
          ],
      ),
    )
    );
  }
}