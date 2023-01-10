import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Contacts(),));
}
class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
      ),
      body: ListView(
        children:  [
          const SizedBox(
            height: 10,
          ),
          const Center(
              child: Text(
            "My Contacts",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          )),
          const SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              title: const Text("Neema"),
              //tileColor: Colors.grey,
              subtitle: const Text("8574203471"),
              trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp,color: Colors.blue),
                  SizedBox(width: 20,),
                  Icon(Icons.phone,color: Colors.blue),
                ],
              ),
              leading: const CircleAvatar(
                radius:50,
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/640px-Google_Contacts_icon.svg.png"),
              ),
              //onTap: ,
            ),
          ),
            Card(
            child: ListTile(
              title: const Text("Sanjana"),
              //tileColor: Colors.grey,
              subtitle: const Text("8574203472"),
              trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp,color: Colors.blue),
                  SizedBox(width: 20,),
                  Icon(Icons.phone,color: Colors.blue),
                ],
              ),
              leading: const CircleAvatar(
                radius:50,
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/640px-Google_Contacts_icon.svg.png"),
              ),
              //onTap: ,
            ),
          ),
            Card(
            child: ListTile(
              title: const Text("Nehla"),
              //tileColor: Colors.grey,
              subtitle: const Text("8574203473"),
              trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp,color: Colors.blue),
                  SizedBox(width: 20,),
                  Icon(Icons.phone,color: Colors.blue),
                ],
              ),
              leading: const CircleAvatar(
                radius:50,
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/640px-Google_Contacts_icon.svg.png"),
              ),
              //onTap: ,
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Anchall"),
              //tileColor: Colors.grey,
              subtitle: const Text("8574203474"),
              trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp,color: Colors.blue),
                  SizedBox(width: 20,),
                  Icon(Icons.phone,color: Colors.blue),
                ],
              ),
              leading: const CircleAvatar(
                radius:50,
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/640px-Google_Contacts_icon.svg.png"),
              ),
              //onTap: ,
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Shreya"),
              //tileColor: Colors.grey,
              subtitle: const Text("8574203475"),
              trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp,color: Colors.blue),
                  SizedBox(width: 20,),
                  Icon(Icons.phone,color: Colors.blue),
                ],
              ),
              leading: const CircleAvatar(
                radius:50,
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/640px-Google_Contacts_icon.svg.png"),
              ),
              //onTap: ,
            ),
          ),
        ],
      ),
    );
  }
}