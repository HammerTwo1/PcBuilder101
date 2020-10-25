import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget{
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool business = false;
  bool gaming = false;
  bool school = false;
  bool produc = false;
  bool errorVis = false;
  String error = "error";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Build"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("What's the Purpose of this Build?", style: TextStyle(fontSize: 20),),
            SizedBox(height: 30,),
            Container(
              //color: Colors.red,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  CheckboxListTile(
                    title: Text("Business"),
                    value: business,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value){
                      setState(() {
                        business = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text("Gaming"),
                    value: gaming,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value){
                      setState(() {
                        gaming = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text("School"),
                    value: school,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value){
                      setState(() {
                        school = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text("Productivity"),
                    value: produc,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value){
                      setState(() {
                        produc = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Visibility(
              visible: errorVis,
              child: Text(error),
            ),
            SizedBox(height: 30,),
            RaisedButton(
              onPressed: (){
                if(business == false){

                }
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 80,top: 15, right: 80, bottom: 15),
                child: Text("Continue"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}