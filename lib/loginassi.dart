import 'package:flutter/material.dart';
void main() {}
  
class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
       // title:  const Text("LoginPage"),
        //centerTitle: true,
       // ),
      body: SingleChildScrollView(
        child: Column(  //view of the page is in column arrangement
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Email"),
                  border: OutlineInputBorder(
                    //borderRadius: BorderRadius.all(Radius.circular(20)),
                  )
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                obscuringCharacter: "*",
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Password"),
                  border: OutlineInputBorder(
                   // borderRadius: BorderRadius.all(Radius.circular(20)),
                  )
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 20),
              child: ElevatedButton(onPressed: (){}, child:  const Text("LOGIN")),
            ),
            TextButton(onPressed: (){}, child: const Text("Don't have an account? Signup"))

          ],))
        );
    }
  }
