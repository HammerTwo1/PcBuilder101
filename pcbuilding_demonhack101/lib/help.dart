import 'package:flutter/material.dart';

class help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About"),
        ),
        body: Center(
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Description of our project",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                    "Well we initially had a team of 4 but some of us became busy for the project"
                    "and what we did instead what make a landing page PC builds and presets."),
              ),
              SizedBox(
                height: 150,
                child: Icon(Icons.collections_bookmark, size: 40),
              ),
              Text("Contributers for this project"),
              RaisedButton(
                onPressed: () {},
                child: Text("Festus M "),
              ),
              RaisedButton(child: Text(" Areeb A"), onPressed: () {}),
        ])));
  }
}
