import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
    home: GridStackk(),
    ));
}
class GridStackk extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      ),
      
      children: [
       Stack(
         children: [
          Image.network(("https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/GoldenGateBridge-001.jpg/270px-GoldenGateBridge-001.jpg"),
       ),
          Positioned(
           bottom: 70,
           left: 10,
           child: Container(
                   width: 100,
                   //color: Colors.black54,
                   padding: const EdgeInsets.all(10),
                   child: const Text("USA",
                   style: TextStyle(fontSize: 20, color: Colors.white),)
          ),
        ),
      ]),
      Stack(
         children: [
          Image.network(("https://media.tacdn.com/media/attractions-splice-spp-674x446/09/93/6a/89.jpg"),
       ),
          Positioned(
           bottom: 90,
           left: 10,
           child: Container(
                   width: 130,
                   //color: Colors.black54,
                   padding: const EdgeInsets.all(10),
                   child: const Text("ENGLAND",
                   style: TextStyle(fontSize: 20, color: Colors.white),)
          ),
        ),
      ]),
      Stack(
         children: [
          Image.network(("https://image.shutterstock.com/image-photo/eiffel-tower-sunset-paris-france-260nw-556743958.jpg"),
       ),
          Positioned(
           bottom: 90,
           left: 10,
           child: Container(
                   width: 120,
                   //color: Colors.black54,
                   padding: const EdgeInsets.all(10),
                   child: const Text("FRANCE",
                   style: TextStyle(fontSize: 20, color: Colors.white),)
          ),
        ),
      ]),   
      Stack(
         children: [
          Image.network(("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPGBqjBZ44oDtTlJn4iqr4kvcuAsjj4UpY9A&usqp=CAU"),
       ),
          Positioned(
           bottom: 70,
           left: 10,
           child: Container(
                   width: 90,
                   //color: Colors.black54,
                   padding: const EdgeInsets.all(10),
                   child: const Text("RUSSIA",
                   style: TextStyle(fontSize: 20, color: Colors.white),)
          ),
        ),
      ]),
      Stack(
         children: [
          Image.network(("https://thumbs.dreamstime.com/b/toronto-skyline-ontario-canada-reflection-51975280.jpg"),
       ),
          Positioned(
           bottom: 90,
           left: 10,
           child: Container(
                   width: 110,
                   //color: Colors.black54,
                   padding: const EdgeInsets.all(10),
                   child: const Text("CANADA",
                   style: TextStyle(fontSize: 20, color: Colors.white),)
          ),
        ),
      ]),   

     ],
     ),
     ); 
    }
  }
