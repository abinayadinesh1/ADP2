import 'package:flutter/material.dart';

class previousEvents extends StatefulWidget {
  @override
  _previousEventsState createState() => _previousEventsState();
}

class _previousEventsState extends State<previousEvents> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Previous Events"), 
        backgroundColor: Colors.green,
      ),
      body: new Center(
        child: new Text("Total Hours: 10")
      ), 
    );
  }
}