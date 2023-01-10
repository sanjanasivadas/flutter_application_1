import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(
    MaterialApp(
    home: Staggeredgridd(),
    ));
}
class Staggeredgridd extends StatelessWidget{
   
  final List<StaggeredTile> _cardTile = const<StaggeredTile> [
     StaggeredTile.count(4, 1),
     StaggeredTile.count(2, 1),
     StaggeredTile.count(2, 3),
     StaggeredTile.count(2, 2),
     StaggeredTile.count(2, 3),
     StaggeredTile.count(2, 2),
     StaggeredTile.count(2, 3),
     StaggeredTile.count(2, 2),
     StaggeredTile.count(2, 3),
     StaggeredTile.count(2, 3),
   ];

  final List<Widget> _listTile = <Widget>[
    BackGroundTile(backgroundColor: Colors.red, icondata: Icons.home,),
    BackGroundTile(backgroundColor: Colors.orange, icondata: Icons.ac_unit,),
    BackGroundTile(backgroundColor: Colors.pink, icondata: Icons.landscape,),
    BackGroundTile(backgroundColor: Colors.green, icondata: Icons.portrait,),
    BackGroundTile(backgroundColor: Colors.blue, icondata: Icons.music_note,),
    BackGroundTile(backgroundColor: Colors.yellow, icondata: Icons.access_alarm,),
    BackGroundTile(backgroundColor: Colors.lightGreen, icondata: Icons.satellite_outlined,),
    BackGroundTile(backgroundColor: Colors.black, icondata: Icons.search_sharp,),
    BackGroundTile(backgroundColor: Colors.lime, icondata: Icons.adjust_rounded,),
    BackGroundTile(backgroundColor: Colors.purple, icondata: Icons.attach_money,),
  ];


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: StaggeredGridView.count(
      crossAxisCount: 4,
      staggeredTiles: _cardTile,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _listTile,
      ),
   );
  }
}
 
class BackGroundTile extends StatelessWidget{
  final Color? backgroundColor;
  final IconData icondata;

  BackGroundTile({ this.backgroundColor,required this.icondata});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Icon(icondata, color: Colors.white,)
    );
  }

}