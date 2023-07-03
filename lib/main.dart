import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){

  /// void main()         ---> To Run a Program
  /// runApp()            ---> To Attach the widget tree to the UI
  /// MaterialApp()       ---> Default theme of our app(Multiplatform support)
  /// home: ________()    ---> Initial screen of the app, [home must be a widget and it may be stateful or stateless
  /// StatelessWidget     ---> StatelessWidget mean first_page do not undergo any state change
  /// BuildContext        ---> To monitor  the widgets in the widgets tree
  ///

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, /// To remove DEBUG badge
    home: SplashScreen(),
  ));
  
}

// class SplashScreen.dart extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {     ///To create widget tree
//     // TODO: implement build
//    return Scaffold(
//
//      appBar: AppBar(
//        centerTitle: true,
//          title:Text("Project 01",style: TextStyle(fontSize: 20)),
//      ),
//
//      /// Center is a Single Child widget, we can not add two or more widgets in a Center
//
//      body: Center(child: Icon(
//        Icons.waving_hand,
//        size: 60,
//        color: Colors.blue
//      ),
//      ),
//    );
//   }
// }


// class SplashScreen.dart extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//
//       backgroundColor: Colors.black,
//
//       /// Column is a Multi Child widget, we can add two or more widgets in a Columns in a body
//
//       body: Center(
//         child: Column(
//           /// mainAxisAlignment - It is used to make the widget at the center of the body
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//
//             Image.network("assets/icons/img_1.png",height: 60,width: 60,),
//
//
//             // Icon(Icons.multiline_chart_outlined,color: Colors.white,size: 60,shadows: [Shadow(
//             //   blurRadius:10.0,  // shadow blur
//             //   color: Colors.black, // shadow color
//             //   offset: Offset(2.0,2.0), // how much shadow will be shown
//             // ),],),
//
//             Text("Project_New",style: TextStyle(color: Colors.white,fontSize: 30 ,shadows: [Shadow(
//               blurRadius:10.0,  // shadow blur
//               color: Colors.white, // shadow color
//               offset: Offset(2.0,2.0), // how much shadow will be shown
//             ),],)),
//           ],
//         ),
//       ),
//     );
//   }
//
// }

// class SplashScreen.dart extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//
//       // backgroundColor: Colors.black, ///To add single colour to the single screen
//
//       /// Column is a Multi Child widget, we can add two or more widgets in a Columns in a body
//
//       body: Container(
//         color: Colors.blue,  /// To get single colour to the entire screen
//         child: Center(
//           child: Column(
//             /// mainAxisAlignment - It is used to make the widget at the center of the body
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//
//               Image.asset("assets/icons/img_1.png",height: 260,width: 400),
//
//
//               // Icon(Icons.multiline_chart_outlined,color: Colors.white,size: 60,shadows: [Shadow(
//               //   blurRadius:10.0,  // shadow blur
//               //   color: Colors.black, // shadow color
//               //   offset: Offset(2.0,2.0), // how much shadow will be shown
//               // ),],),
//
//               Text("Project_New",style: TextStyle(color: Colors.white,fontSize: 30 ,shadows: [Shadow(
//                 blurRadius:10.0,  // shadow blur
//                 color: Colors.white, // shadow color
//                 offset: Offset(2.0,2.0), // how much shadow will be shown
//               ),],)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SplashScreen.dart extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//
//        backgroundColor: Colors.black,
//
//       body: Container(
//         decoration: BoxDecoration(image: DecorationImage(
//             fit: BoxFit.fill,
//             image:
//         // NetworkImage("https://images.unsplash.com/photo-1687300168808-36d497572dff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",))),
//         NetworkImage("https://i.pinimg.com/564x/63/49/c6/6349c6a8ea789cc766603a7b86f2ecbc.jpg",))),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//
//               Image.asset("assets/icons/icon1.png",height: 160,width: 160),
//
//               Text("Project_New",style: TextStyle(color: Colors.black,fontSize: 30 ,shadows: [Shadow(
//                 blurRadius:10.0,  // shadow blur
//                 color: Colors.blueGrey, // shadow color
//                 offset: Offset(2.0,2.0), // how much shadow will be shown
//               ),],)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class SplashScreen extends StatelessWidget{

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

              Image.asset("assets/icons/fruits.png",height: 160,width: 160),

          Text("Project_New",style:GoogleFonts.pacifico(textStyle: TextStyle(color: Colors.black,fontSize: 30 )),)
          ]
          ),
        ),
      ),
    );
  }
}