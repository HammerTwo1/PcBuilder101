import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text("PC BUILDER 101"),
          actions: [
            IconButton(icon: Icon(Icons.help),),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.computer, size: 200,),
              Text("WELCOME TO", style: TextStyle(fontSize: 30),),
              Text("PC BUILDER 101", style: TextStyle(fontSize: 40),),
              SizedBox(
                height: 200,
                child: Icon(Icons.arrow_downward,size: 50,),
              ),
              RaisedButton(
                onPressed: (){

                },
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.only(left: 70,top: 20, right: 70, bottom: 20),
                  child: Text("Continue", style: TextStyle(),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
