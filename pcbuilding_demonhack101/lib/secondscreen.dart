import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcbuilding_demonhack101/thirdscreen.dart';

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
  Map epicicons = {'Business': Icons.business,
    'Gaming': CupertinoIcons.game_controller_solid,
    'School': Icons.school,
    'Productivity': Icons.offline_bolt};
  Map allbools = {
    'Business': false,
    'Gaming': false,
    'School': false,
    'Productivity': false};
  List tempArray = [];
  String appBarT = "";
  getCheckedItem(){
    allbools.forEach((key, value) {
      //print("");
      if(value == true){
        tempArray.add(key);
      }
    });
    print(tempArray);
    if(tempArray.length > 1){
      setState(() {
        error = "Please select only one item";
        errorVis = true;
      });
    }
    else if(tempArray.length == 0) {
      setState(() {
        error = "bruh select one item";
        errorVis = true;
      });
    }
    else {
      setState(() {
        errorVis = false;
        error = "";
      });
      print(tempArray[0]);
      setState(() {
        appBarT = tempArray[0].toString();
      });
      Navigator.push(context, MaterialPageRoute(builder: (context) => thirdscreen(appBarT)));
    }
    tempArray.clear();
  }

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
              padding: EdgeInsets.all(30),
              child: Column(
                children: allbools.keys.map((key) {
                  return CheckboxListTile(
                    title: Text(key.toString()),
                    secondary: Icon(epicicons[key]),
                    value: allbools[key.toString()],
                    controlAffinity: ListTileControlAffinity.trailing,
                    onChanged: (value){
                      setState(() {
                        allbools[key.toString()] = value;
                      });
                    },
                  );
                }).toList()
              ),
            ),
            Visibility(
              visible: errorVis,
              child: Text(error,style: TextStyle(fontSize: 18, color: Colors.red),),
            ),
            SizedBox(height: 30,),
            RaisedButton(
              onPressed: (){
                getCheckedItem();
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