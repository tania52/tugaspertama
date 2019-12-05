import 'package:flutter/material.dart';

import './Halaman_Komputer.dart' as komputer;
import './Halaman_Radio.dart' as radio;
import './Halaman_Earphone.dart' as headset;
import './Halaman_Smartphone.dart' as handphone;

void main(){
  runApp(new MaterialApp(
    title: "Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

TabController controller;

@override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

@override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.pinkAccent,
        title: new Text("Daftar Elektronik"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer),text: "Komputer",),
            new Tab(icon: new Icon(Icons.headset),text: "Headset",),
            new Tab(icon: new Icon(Icons.radio),text: "Radio",),
            new Tab(icon: new Icon(Icons.smartphone),text: "Smartphone",),
          ],
        ),
      ),
 
 body: new TabBarView(
   controller: controller,
   children: <Widget>[
     new komputer.Komputer(),
     new headset.Headset(),
     new radio.Radio(),
     new handphone.Smartphone(),
   ],
 ),
 bottomNavigationBar: new Material(
   color: Colors.pinkAccent,
   child:new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer),),
            new Tab(icon: new Icon(Icons.headset),),
            new Tab(icon: new Icon(Icons.radio),),
            new Tab(icon: new Icon(Icons.smartphone),),
          ],
        ), 
 ),
    );
  }
}