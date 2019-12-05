import 'package:flutter/material.dart';

class Headset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("HEADSET", style: new TextStyle(fontSize: 30),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Image.asset("img/headset.jpeg", width:200.0,)
          ],

        ),
      ),
    );
  }
}