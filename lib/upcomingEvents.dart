import 'package:flutter/material.dart';
import "package:adp_1/details.dart";

// ignore: camel_case_types
class upcomingEvents extends StatefulWidget {
  @override
  _upcomingEventsState createState() => _upcomingEventsState();
}

class _upcomingEventsState extends State<upcomingEvents> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Upcoming Events"),
        backgroundColor: Colors.green, 
      ),
      body: MyDynamicListView(context),
      // body: new Center(
      //   child: new Text("Here, you can see that there are 4 upcoming events in October and 3 in November")
    ); 
  }
}

class MyDynamicListView extends StatefulWidget {
  MyDynamicListView(BuildContext context);

  @override
  _MyDynamicListViewState createState() => _MyDynamicListViewState();
}

class _MyDynamicListViewState extends State<MyDynamicListView> {
  @override
  Widget build(BuildContext context) {

    final events = ["JA South Women's Future Leadership Forum", "Virtual 4.01K for JANJ","JA Titan Challenge", "A Taste of the Decades", "JA Bowl A Thon" ];
    // final administrators = ["JA South Women's Future Leadership Forum", "Virtual 4.01K for JANJ","JA Titan Challenge", "A Taste of the Decades", "JA Bowl A Thon" ];

    var listView = ListView.separated(
      itemCount: events.length,

      itemBuilder: (context, index)
      {
        return Card(
          child:ListTile(
          title: new Text(events[index]),
          subtitle: Text('You attended the #$index event and recieved a total of 2 hours.'),
          leading: Icon(Icons.event_available),
          trailing: IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: (){
              print(events[index]);
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => DetailPage(index),
                ),
            );
            }),
        
          ),);
      separatorBuilder: (context, index){
        return Divider();
      };
      });
    return listView;
  }

}