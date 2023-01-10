import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("LoginPage"),
        //centerTitle: true,
        ),
      body: SingleChildScrollView(
        child: Column(  //view of the page is in column arrangement
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("LoginPage",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  label: Text("Username"),
                  //hintText: "Username",
                  hintText: "username must be your email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                obscuringCharacter: "*",
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  //suffixIcon: Icon(Icons.password),
                  label: Text("Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 20),
              child: ElevatedButton(onPressed: (){}, child:  Text("LOGIN")),
            ),
            TextButton(onPressed: (){}, child: const Text("Not a User? Register here!!!!"))

          ],))
      //body: Center(
       //     child: Text (
        //    "WELCOME!!!!", 
        //    style: TextStyle(
        //      fontSize: 40,fontWeight: FontWeight.bold, color: Colors.orange),
        //      ),
       //   ),
        );
    }
  }