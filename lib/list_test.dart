import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}
List<String> litems = ["1","2","Third","4"];


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      home: new ListDisplay(),
    );
  }
}
class ListDisplay extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Dynamic Demo"),),
      body: new ListView.builder(
        itemCount: litems.length,
        itemBuilder: (BuildContext ctxt, int index){
          // A Separate Function called from itemBuilder
          Widget buildBody(BuildContext ctxt, int index) {
            return new Text(litems[index]);
          }
          body: new ListView.builder
          (
            itemCount: litems.length,
            itemBuilder: (BuildContext ctxt, int index) => buildBody(ctxt, index)
          );
        }
      )  // ListView.builder() shall be used here.
      );
    // );
  }
}
