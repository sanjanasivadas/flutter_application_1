import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Movies(),));
}

class Movies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies"),
      ),
      body: ListView(
        children:[
        Card(
          child: ListTile(
            title: const Text("Avengers : Endgame"),
            subtitle: const Text("Action,Adventure,Fantasy"),
            trailing: Wrap(
              children: const [
                Text("2019")
              ],
            ),
            leading: const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage("https://images.squarespace-cdn.com/content/v1/5d9767b1eb25db6ebdc03a70/1588817684139-VD5DBT6V5MS6FI0LS62G/endgame.png"),
            ),
          ),
          ),
        Card(
          child: ListTile(
            title: const Text("Dora and the Lost City of Gold "),
            subtitle: const Text(""),
            trailing: Wrap(
              children: const [
                Text("2019")
              ],
            ),
            leading: const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage("https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/6855f99a-529e-474b-be73-aad11412f2a1/ddbbzaf-cddcf355-23c2-4f95-bc21-8de7341292d9.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzY4NTVmOTlhLTUyOWUtNDc0Yi1iZTczLWFhZDExNDEyZjJhMVwvZGRiYnphZi1jZGRjZjM1NS0yM2MyLTRmOTUtYmMyMS04ZGU3MzQxMjkyZDkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.4mkopVQgtloeLwhzzvwzjy6vNdHtQRkBdGn6M7LeufY"),
            ),
          ),
          ),
        Card(
          child: ListTile(
            title: const Text("Ugly Dolls"),
            subtitle: const Text("Animation,Adventure,Comedy"),
            trailing: Wrap(
              children: const [
                Text("2019")
              ],
            ),
            leading: const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/en/0/06/UglyDolls_%282019%29_theatrical_poster.png"),
            ),
          ),
          ), 
        Card(
          child: ListTile(
            title: const Text("Captain Marvel"),
            subtitle: const Text("Action,Adventure,Sci-Fi"),
            trailing: Wrap(
              children: const [
                Text("2019")
              ],
            ),
            leading: const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage("https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/6855f99a-529e-474b-be73-aad11412f2a1/dcz3rms-3938fef4-ccc0-4da4-8e22-a5dba86bd4e8.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzY4NTVmOTlhLTUyOWUtNDc0Yi1iZTczLWFhZDExNDEyZjJhMVwvZGN6M3Jtcy0zOTM4ZmVmNC1jY2MwLTRkYTQtOGUyMi1hNWRiYTg2YmQ0ZTgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.J8Cru6Q6Op_F0Bwyrfd5j3hkExHi7q9HrjeOB3DltkA"),
            ),
          ),
          ),   
        Card(
          child: ListTile(
            title: const Text("John Wick: Chapter 3 - Parabellum"),
            subtitle: const Text("Action,Thriller"),
            trailing: Wrap(
              children: const [
                Text("2019")
              ],
            ),
            leading: const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage("https://target.scene7.com/is/image/Target/GUEST_62a25d89-0e06-416a-ac28-acbbbed6276c?wid=488&hei=488&fmt=pjpeg"),
            ),
          ),
          ),
        Card(
          child: ListTile(
            title: const Text("Us"),
            subtitle: const Text("Horror,Thriller"),
            trailing: Wrap(
              children: const [
                Text("2019")
              ],
            ),
            leading: const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage("https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/f1ee5677931399.5c97609149fdf.png"),
            ),
          ),
          ), 
        Card(
          child: ListTile(
            title: const Text("Triple Threat"),
            subtitle: const Text("Action,Thriller"),
            trailing: Wrap(
              children: const [
                Text("2019")
              ],
            ),
            leading: const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage("https://pic-bstarstatic.akamaized.net/ugc/2eedb6b350432a4becc3224eec0a917d3cb33f9e.png"),
            ),
          ),
          ), 
        Card(
          child: ListTile(
            title: const Text("HellBoy"),
            subtitle: const Text("Action,Adventure,Fantasy,Sci-Fi"),
            trailing: Wrap(
              children: const [
                Text("2019")
              ],
            ),
            leading: const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage("https://m.media-amazon.com/images/M/MV5BNTc1ZWY0ZTEtZTVmNi00MTg0LTg4NmQtZTI4OWNiMmQ0MWZkXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_FMjpg_UX1000_.jpg"),
            ),
          ),
          ),         
      ],
    )
   );
  }
}