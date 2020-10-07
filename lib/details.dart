import "package:flutter/material.dart";
// import 'package:mailto/mailto.dart';
//import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget{
  final int index;
  DetailPage(this.index);


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: (
        Text.rich(
          TextSpan(
            children: <TextSpan>[
              TextSpan(text: '$index ', style: TextStyle(color: Colors.green[300], fontSize: 28)),
              TextSpan(text: 'Date of Event: November 3, 2020', style: TextStyle(color: Colors.black)),
              TextSpan(text: 'Description: This was a JA event meant to strengthen community in the area by building bonds and connections. At the event, volunteers helped by organizing the area and distributing materials to those present.', style: TextStyle(color: Colors.black)),
              TextSpan(text: 'Administrator Present: Abinaya Dinesh', style: TextStyle(color: Colors.black)),
      ],
    ),
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 20.0,
      fontFamily: 'Karla'
    ),

        
      )
    )
    );
        }
}