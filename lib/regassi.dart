import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: 
      SingleChildScrollView(
        child: Column(  //view of the page is in column arrangement
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text("Signup",style: TextStyle(fontSize: 30),),
            ),
            const Text("Create an account its free"),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Username"),

                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.all(Radius.circular(20)),
                  )
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Password"),
                  border: OutlineInputBorder(
                   // borderRadius: BorderRadius.all(Radius.circular(20)),
                  )
                ),),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Confirm Password"),
                  border: OutlineInputBorder(
                   // borderRadius: BorderRadius.all(Radius.circular(20)),
                  )
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 20),
              child: ElevatedButton(onPressed: (){}, child:  const Text("Sign Up")),
            ),
            TextButton(onPressed: (){}, child: const Text("Already have an account?Login"))

          ],))
        );
    }
  }