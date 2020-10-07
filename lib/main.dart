import 'package:flutter/material.dart';
import 'package:adp_1/addEvent.dart';
import 'package:adp_1/PreviousEvents.dart';
import 'package:adp_1/upcomingEvents.dart';
import 'package:adp_1/milestones.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override  
  Widget build(BuildContext context){
    return new MaterialApp(
      home: MyBottomNavigationBar(),
    );
  }
}
//trick is to use stf enter to create stateful widget
class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    previousEvents(), 
    addEvent(), 
    upcomingEvents(), 
    milestones()
  ]; //pass pages here once we get index number

  void onTappedBar(int index){
    setState((){
      _currentIndex = index;
    });
  }

//building nav bar
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: new Icon(Icons.alarm),
            title: new Text("Upcoming Events")
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.event),
            title: new Text("Tracked Events")
          ),BottomNavigationBarItem(
            icon: new Icon(Icons.party_mode),
            title: new Text("Milestones")
          ),BottomNavigationBarItem(
            icon: new Icon(Icons.add),
            title: new Text("New")
          ),
        ],
      )
    );
  }
}