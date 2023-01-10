import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.teal),
    home: Hotel()
  ));
}

class Hotel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      
      leading: Icon(Icons.menu),
      actions: const [
      Icon(Icons.favorite_border),
      SizedBox(width: 10,)
    ], 
    bottom: PreferredSize(
      preferredSize: (Size(30, 60)),
      child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(1),
                  child: Text("Type your Location",
                    style: TextStyle(color: Colors.white, fontSize: 18,),),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                   child: Container(
                    width: 300,
                     height: 40,
                     decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Boudhha, Kathmandu",
                         
                      ),
                    ),
                  ),
                ),
              ],
            ),
           ),
         ),
         body: Padding(
           padding: const EdgeInsets.all(10),
            child: Column(
              children: [
            SizedBox(width: 30,),

            Row(
              children: const [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    color: Colors.pink,
                    child: ListTile(
                      
                      leading:Icon(Icons.hotel),
                       title:Text("Hotel")),
                  ),),
                  Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    color: Colors.blue,
                    child: ListTile(
                      
                      leading:Icon(Icons.restaurant),
                       title:Text("Restaurant")),
                  ),),
                  Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    color: Colors.orange,
                    child: ListTile(
      
                      leading:Icon(Icons.local_cafe),
                       title:Text("Cafe")),
                  ))
              ],
            ),

            Padding(
           padding: const EdgeInsets.all(10),
            child: Column(
              children: [
            SizedBox(width: 10,),
            Row(
              children: [
                Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Card(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Center(
                              child: Container(
                               height: 260,
                                width: 350,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                        image: NetworkImage(
                                        "https://media.istockphoto.com/id/187044923/photo/luxury-bedroom.jpg?s=1024x1024&w=is&k=20&c=qLRjUE2moq54O-uQDfgN-vr5evhVLYrHYzV2PMKIeao=")),
                                     ),
                                   ),
                                 ),
                     const Positioned(
                          right: 4,
                          top: 4,
                          child: Icon(Icons.star_border, color: Colors.white,)),
                      Positioned(
                          right: 10,
                          bottom: 5,
                              child: Container(
                              color: Colors.white,
                              height: 20,
                              width: 20,
                              child: const Center(child: Text("\$40")),
                             )
                          ),
                       ],
                    ),

                        Padding(
                          padding: EdgeInsets.only(left: 4, top: 3),
                          child: Column(
                  
                            children: [
                              const Text('Awesome room near Boudha', style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),),
                               const Text('Boudha, Kathmandu', style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),),
                              Row(
                                children: const[
                                  Icon(Icons.star, color: Colors.green,),
                                  Icon(Icons.star, color: Colors.green,),
                                  Icon(Icons.star, color: Colors.green,),
                                  Icon(Icons.star, color: Colors.green,),
                                  Text("(10 reviews)",
                                    style: TextStyle(color: Colors.grey),)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    )]
    )
    ));
  }
}

            