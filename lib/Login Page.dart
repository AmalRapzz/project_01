import 'package:flutter/material.dart';

import 'Registration Page.dart';
import 'Home.dart';

class Loginpage extends StatelessWidget {
  const Loginpage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),

      ),
      body: Column(
        children: [
          Image.asset("assets/icons/icon1.png",height: 100,width: 100 ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                   hintText: "User Name",
                   helperText: "User Name must be your Email ID",
                   labelText: "User Name",
                   prefixIcon: Icon(Icons.person_outline_rounded),
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12),
            child: TextField(obscureText: true,obscuringCharacter: '*',
              decoration: InputDecoration(
                hintText: "Password",
                helperText: "Password must be 8 Characters",
                labelText: "Password",
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
    Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => HomePage()));

    }, child: Text("Login")),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RegistrationPage()));
          }, child: Text("New account creating"))
        ],
      ),
    );
  }
}
