import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class help extends StatelessWidget {
  
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
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
                child: Text("It's been too long have people said that \"PC's are too hard to build\" \nand\n\"I'm not sure what parts are right for me\".\nLook no further to the newly improved, and OPTIMIZED PC BUILDER 101 (TM)!\nWith this bad boy, you can find the PC preset that's best for you with your budget and lifestyle. What are you waiting for? GET BUILDING",
                style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(
                height: 150,
                child: Icon(Icons.collections_bookmark, size: 40),
              ),
              Text("Contributers for this project"),
              SizedBox(height: 15,),
              RaisedButton(
                onPressed: () {
                  _launchURL("https://www.github.com/Festus1440");
                },
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text("Festus M "),
                ),
              ),
              SizedBox(height: 15,),
              RaisedButton(child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(" Areeb A"),
              ),onPressed: () {
                _launchURL("https://github.com/areeb-can-code");
              }
              ),
              SizedBox(height: 15,),
              RaisedButton(
                onPressed: () {
                  _launchURL("https://github.com/hammertwo1");
                },
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text("Hesam"),
                ),
              ),
            ]
            )
        )
    );
  }
}
