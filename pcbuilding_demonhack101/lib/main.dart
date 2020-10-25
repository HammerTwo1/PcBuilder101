import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcbuilding_demonhack101/secondscreen.dart';

import 'help.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PC BUILDER 101"),
        actions: [
          IconButton(icon: Icon(Icons.help),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => help()));
          },),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.computer, size: 200,),
            Text("WELCOME TO", style: TextStyle(fontSize: 30),),
            Text("PC BUILDER 101", style: TextStyle(fontSize: 40),),
            SizedBox(height: 10,),
            Text("This project is designed to help users build preset computers",style: TextStyle(),),
            SizedBox(
              height: 200,
              child: Icon(Icons.arrow_downward,size: 50,),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.only(left: 80,top: 15, right: 80, bottom: 15),
                child: Text("Continue", style: TextStyle(),),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}
