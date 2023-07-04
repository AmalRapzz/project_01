import 'package:flutter/material.dart';

import 'New Register.dart';
import 'Home.dart';

class Loginpage extends StatelessWidget {
   Loginpage ({Key? key}) : super(key: key);

  String username = "admin@123";
  String password = "admin123";
  ///For fetching
  final uname=TextEditingController();
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),

      ),
      body: Column(
        children: [
          Image.asset("assets/icons/icon1.png",height: 100,width: 100 ),
          Padding(
            padding:  const EdgeInsets.all(12.0),
            child: TextField(
              controller: uname,
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
            padding:  const EdgeInsets.only(left: 12,right: 12,bottom: 12),
            child: TextField(obscureText: true,obscuringCharacter: '*',
              controller: pass,
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

            if(uname.text != "" && pass.text !="")
            {
               if(uname.text==username&&pass.text==password)
               {
                 Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) => HomePage()));
               }else
                 {
                     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                     content : Text("Email/ Password is Incorrect"),
                     backgroundColor: Colors.red,));
                 }
            }else
            {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content : Text("Enter The User Name and Password"),
                backgroundColor: Colors.red,));
            }
    }, child: Text("Login")),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => NewRegistrationPage()));
          }, child: Text("New account creating"))
        ],
      ),
    );
  }
}
