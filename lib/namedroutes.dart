import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      title: 'Named Routes',
      initialRoute: '/',
      routes: {
        '/':(context) => firstRoute(),
        '/second':(context) => secondRoute(),
       // '/third':(context) => thirdRoute(),
      },
    ));
}

class firstRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Launch Screen"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("To Second"),
              onPressed: () {
              Navigator.pushNamed(context,'/second');
               },),
               SizedBox(height: 20,),
               ElevatedButton(
                 child: const Text("To Third"),
                onPressed: () {
                 Navigator.pushNamed(context, '/third' );
                }), 
          ],
        ),
      ),
    );
  }

}

class secondRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: const Text('Third Route'),
      backgroundColor: Colors.green,
    ),
    body: Center(
      child: ElevatedButton(
        child: const Text("To launch Screen"),
        onPressed: () {
          Navigator.of(context).pop();
        },
    ),
   ),);
  }

}