import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Login Page.dart';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));

}

class SplashScreen extends StatefulWidget{

  @override
  State<SplashScreen> createState() => _SplashScreenState();   /// createState() ---> Create and initial State for the screen
}

class _SplashScreenState extends State<SplashScreen> {  ///Initial State of Splash Screen

  /// There are two functionalities in state class
  /// initState(){} and setState(){}
  ///
  /// initState(){} ---> What will happen when the app or screen is loaded initially
  /// setState(){}  ---> What change will occur on a widget or screen

  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Loginpage()));
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.green,
            Colors.blue,
            Colors.white
          ],begin: Alignment.bottomRight,end: Alignment.topLeft)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset("assets/icons/icon1.png",height: 160,width: 160),

          Text("Project_New",style:GoogleFonts.pacifico(textStyle: TextStyle(color: Colors.black,fontSize: 30 )),)
          ]
          ),
        ),
      ),
    );
  }
}