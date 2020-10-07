import 'package:flutter/material.dart';

class addEvent extends StatefulWidget {
  @override
  _addEventState createState() => _addEventState();
}

class _addEventState extends State<addEvent> {
  @override
  Widget build(BuildContext context) {
  return new Scaffold(
      appBar: new AppBar(
        title: new Text("Register for a new event"), 
        backgroundColor: Colors.green,

      ),
      body: new Center(
        child: new Text("There are 5 upcoming events to register for")
      ), 
    );      
      
  }
}