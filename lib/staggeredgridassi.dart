
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Staggeredgridassi()
  ));
}
class Staggeredgridassi extends StatelessWidget{
  
    final List<StaggeredTile> _staggeredStyles = const<StaggeredTile> [
      StaggeredTile.count(1, 1),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1),
      //StaggeredTile.count(1, 2),
      
    ];
    

     final List<BackGroundTiles> _listTile = [
       const BackGroundTiles(
        links: "https://images.unsplash.com/photo-1654190556461-3919acf03f0a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
        heading: "Sunset", 
        subhead: "Countryside"),
       const BackGroundTiles(
        links: "https://images.unsplash.com/photo-1543590171-c63f78d54a7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        heading: "December", 
        subhead: "Christmas"),
       const BackGroundTiles(
        links: "assets/images/backgroundimg.jpg",
        heading: "Greenary", 
        subhead: "Nature"),
       const BackGroundTiles(
        links: "https://images.unsplash.com/photo-1652447385283-817463bd31af?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80",
        heading: "Blue", 
        subhead: "Ocean"),
    ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: StaggeredGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
        staggeredTiles: _staggeredStyles,
        children: _listTile,
        ),
     ),
   );
  }
}

class BackGroundTiles extends StatelessWidget{
  
  final String links;
  final String heading;
  final String subhead;

  const BackGroundTiles({super.key,required this.links,required this.heading,required this.subhead});
  
  @override
  Widget build(BuildContext context) {
    return Container(
    color: Color.fromARGB(97, 158, 158, 158),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

          Image.network(links),
          const SizedBox(
          height: 1),
        
        Padding(
          padding: const EdgeInsets.all(10.0),
           child: Column(
             children:[
               Text(heading,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                 Text(subhead,style: const TextStyle(fontSize: 12,fontStyle: FontStyle.normal),),
                      ],
                    ),
                ),],
           )); 
      }  
  }

  
    
   
    
    
   
  

