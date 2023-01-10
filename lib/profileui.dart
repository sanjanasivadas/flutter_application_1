import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profileui()
  ));
}
class Profileui extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    extendBodyBehindAppBar: true,
    //appBar: AppBar(
   // backgroundColor: Colors.grey.withOpacity(0.0),
   // elevation: 0,
    //),
    body: 
    Container(
     height: double.infinity,
     width: double.infinity,
     color: Colors.grey[200],
       child: ListView(
       children: [
        Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              height: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.grey,
                  ),
                 // IconButton(
                 //   onPressed: () {},
                    Icon(
                      Icons.menu,
                  ),
                ],
              ),
            ),
          //padding: const EdgeInsets.only(top: 15, left: 30, right: 30),
         // child: Container(
        // height: 5,
        // ),
        SizedBox(height: 5,),
        Center(
        child:Column(
          children: [
          Container(
           // decoration: BoxDecoration(
         child: const CircleAvatar(
          minRadius: 40,
          maxRadius: 60,
          backgroundImage: NetworkImage("https://images.news18.com/ibnlive/uploads/2022/07/5b64ef07d608085cf4b239ddfeda4a8d.png"),   
           ),    
          ),
        Padding(
          padding: EdgeInsets.only(top :15, left: 60, right: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network("https://cdn-icons-png.flaticon.com/512/145/145802.png",width: 40,height: 45,),
              Image.network("https://cdn-icons-png.flaticon.com/512/2111/2111450.png",width: 40,height:45,),
              Image.network("https://cdn-icons-png.flaticon.com/512/2504/2504839.png",width: 40,height:45,),
              Image.network("https://cdn-icons-png.flaticon.com/512/145/145807.png",width: 40,height:45,),
            ],
          ),
          ),
          Container(
             margin: const EdgeInsets.only(left: 50, right: 50, top: 20),
              height: 75,
              child: Column(
                children: const [
                  Text(
                    'chromicle',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '@Developer',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  )
                ],
              ),
             ),
              Container(
              height: 80,
              margin: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Mobile App Developer And Open',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Source Enthusisastic',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 35, right: 35),
              height: MediaQuery.of(context).size.height *0.3,
              width: MediaQuery.of(context).size.width * 0.6,
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    ProfileTile(
                      txt: 'Privacy',
                      icon: Icon(
                        Icons.privacy_tip,
                        color: Colors.black,
                      ),
                    ),
                    ProfileTile(
                      txt: 'Purchase history',
                      icon: Icon(
                        Icons.history,
                        color: Colors.black,
                      ),
                    ),
                    ProfileTile(
                      txt: 'Help and Support',
                      icon: Icon(
                        Icons.help,
                        color: Colors.black,
                      ),
                    ),
                    ProfileTile(
                      txt: 'Settings',
                      icon: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                    ),
                    ProfileTile(
                      txt: 'Invite a friend',
                      icon: Icon(
                        Icons.person_add,
                        color: Colors.black,
                      ),
                    ),
                    ProfileTile(
                      txt: 'Logout',
                      icon: Icon(
                        Icons.logout,
                        color: Colors.black,
                       ),
                      ),
                     ],
                    ),
                  ),
                 ),
               ],
              ),
             ),
            ],
           ),
         ),
       );
    }
  }

class ProfileTile extends StatelessWidget {

    const ProfileTile({
    Key? key,
    required this.txt,
    required this.icon,
  }) : super(key: key);

  final String txt;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(top:10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[300],
      ),
      child: ListTile(
        dense: true,
        title: Text(
          txt,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        leading: icon,
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
       ),
    );
  }
}