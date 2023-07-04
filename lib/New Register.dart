import 'package:flutter/material.dart';
import 'package:project_01/Home.dart';

class NewRegistrationPage extends StatefulWidget {
  const NewRegistrationPage ({Key? key}) : super(key: key);

  @override
  State<NewRegistrationPage> createState() => _NewRegistrationPageState();
}

class _NewRegistrationPageState extends State<NewRegistrationPage> {

  /// To validate the entire form
  final formkey = GlobalKey<FormState>();
  var c_password;    // confirm password?
  bool show_pass = true;  //password shoe

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Registration Page"),
        ),
        body: Form(
          key: formkey,
            child: Column(
              children: [
               Text("Registration Page",style: TextStyle(fontSize: 30),),
    TextFormField(
    decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Email"),
    validator: (email){
      if(email!.isEmpty || !email.contains('@')){
        return "Enter a Valid email or Field must not be empty";
    }else{
        return null;
    }
    },
    ),
    TextFormField(
    decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Password"),
    validator: (password){
      c_password=password;
    if(password!.isEmpty || password.length<6){
    return "Enter a Valid Password and Password should be contain at least 6 Characters";
    }else{
    return null;
    }
    },
    ),
    TextFormField(obscureText: show_pass,obscuringCharacter: "*",
      decoration: InputDecoration(
    suffixIcon: IconButton(
        onPressed: (){
      setState(() {
        if(show_pass){
          show_pass=false;
        }else{
          show_pass=true;
        }
      });
    },icon: Icon(
        show_pass==true?Icons.visibility:Icons.visibility_off
    )),
      border: OutlineInputBorder(),hintText: "Confirm Password",),
      validator: (confirm_password){
        if(confirm_password != c_password || confirm_password!.isEmpty){
          return "Enter a Valid Password as entered before and Field must not be empty";
        }else{
          return null;
        }
      },),
    ElevatedButton(onPressed: (){

      var isValid = formkey.currentState!.validate();
      if(isValid == true){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
      }
    }, child: Text("Register"))

                ]
            )));
  }
}