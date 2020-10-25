import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class thirdscreen extends StatelessWidget {
  final appBarTitle;
  thirdscreen(this.appBarTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("What's your budget?", style: TextStyle(fontSize: 20),),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  CheckboxListTile(
                    title: Text("Broke (\$0 - \$200)"),
                    value: false,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value){

                    },
                  ),
                  CheckboxListTile(
                    title: Text("First Paycheck (\$201 - \$550)"),
                    value: false,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value){

                    },
                  ),
                  CheckboxListTile(
                    title: Text("Midrange (\$551 - \$1000)"),
                    value: false,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value){

                    },
                  ),
                  CheckboxListTile(
                    title: Text("Expensive (\$100+)"),
                    value: false,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value){

                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}