import 'package:flutter/material.dart';

class help extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),

      ),
      body: Center(
        child: Column(
            mainAxixAlignment:MainAxis.center,
            children: [
            Text(" Description of our pronject" ,
            style: TextStyle(fontSize: 20) , TextStyle(font:bold)
        ),
        Text("Well we initially had a team of 4 but some of us became busy for the project"
            "and what we did instead what make a landing page PC builds and presets."
        ),
      )
      SizedBox(
      height: 150,
      child: Icon(Icons.smileface, size 40),

    )
    Text("Contributers for this project")
    RaisedButton(
        onPressed: ([INSERT LINK TO FESTUS BIO])
        Text("Festus M " ) )
    RaisedButton (
    onPressed: ([Insert LINK To Areeb BIO])
    Text (" Areeb A"))



    )

    ]
    )
    )
    );
  }

}