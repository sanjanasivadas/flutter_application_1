import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //theme: ThemeData(primarySwatch: Colors.white),
    debugShowCheckedModeBanner: false,
    home: Categoriesui(),
  ));
}
final List<Map> datas = [
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "Does Dry is January Actually Improve Your Health?",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "You do hire a designer to make something. You hire them.",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "Does Dry is January Actually Improve Your Health?",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "You do hire a designer to make something. You hire them.",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
];

class Categoriesui extends StatelessWidget{
  final Color primaryColor = const Color(0xfED22192);
  final Color bgColor = const Color(0xffa9E0E3);
  final Color secondaryColor = const Color(0xff324558);
  @override
  Widget build(BuildContext context) {
  return DefaultTabController(
    initialIndex: 0,
    length: 5, 
    child: Theme(
      data: ThemeData(
        primaryColor: primaryColor,
         appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: secondaryColor),
          actionsIconTheme: IconThemeData(
            color: secondaryColor,
          ),
         toolbarTextStyle: TextTheme(
          subtitle1: TextStyle(
            color: secondaryColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
         ).bodyText2,
         titleTextStyle: TextTheme(
          subtitle1: TextStyle(
            color: secondaryColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
         ).headline6,
         ),
      ),
    child:Scaffold(
    appBar: AppBar(
      //backgroundColor: Colors.white,
      leading: const Icon(Icons.category,),
      centerTitle: true,
      title: const Text("Categories",style: TextStyle(color: Colors.black),),
      actions: const [
       Icon(Icons.search),
      ],
      bottom: TabBar(
        isScrollable: true,
        labelColor: primaryColor,
        indicatorColor: primaryColor,
        unselectedLabelColor: secondaryColor,
        tabs: const [
          Tab(
            text: "For You",
          ),
          Tab(
            text: "Design",
          ),
          Tab(
            text: "Beauty",
          ),
          Tab(
            text: "Education",
          ),
          Tab(
            text: "Entertainment",
          ),
        ],
      ),
    ),
    body: TabBarView(
      children: [
        ListView.separated(
          itemBuilder: (context, index) {
            return _buildDataItem(index);
          }, 
          separatorBuilder: (context, index) => 
          const SizedBox(height: 16), 
          itemCount: datas.length,),
        const Text("Tab 2"),
        const Text("Tab 3"),
        const Text("Tab 4"),
        const Text("Tab 5"),

      ],
    ),
    bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
         //selectedItemColor: Colors.blue,
          items: const[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined,),
                //backgroundColor: Colors.white,
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.folder_copy,),
                //backgroundColor: Colors.white,
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border,),
                //backgroundColor: Colors.white,
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_add_outlined,),
                //backgroundColor: Colors.white,
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings,),
                //backgroundColor: Colors.white,
                label: ""),
                    ],
                 ),
              ),
           ),
        );
     }
    Widget _buildDataItem(int index) {
      Map data = datas[index];
      return Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              width: 70,
              height: 70,
              color: bgColor,
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(14),
              margin: const EdgeInsets.all(14),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    color: Colors.blue,
                    width: 60,
                    child: const Image(image: NetworkImage("https://images.unsplash.com/photo-1667313348526-dbb92f06a9b9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                    fit: BoxFit.cover,
                    ),
                  ),
                const SizedBox(width: 15,),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        data["title"],
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: secondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: CircleAvatar(
                                radius: 12.0,
                                backgroundColor: primaryColor,
                              ),
                            ),
                            const WidgetSpan(
                              child: SizedBox(width: 5.0),
                            ),
                            TextSpan(
                                text: data["author"],
                                style: const TextStyle(fontSize: 15.0)),
                            const WidgetSpan(
                              child: SizedBox(width: 20.0),
                            ),
                            const WidgetSpan(
                              child: SizedBox(width: 5.0),
                            ),
                            TextSpan(
                              text: data["time"],
                            ),
                          ],
                        ),
                        style: const TextStyle(height: 2.0),
                      ),
                    ],
                   ),
                 ),
               ],
             ),
           ),
         ],
       ),
     );
  }
}