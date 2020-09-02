import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tabBar = TabBar(
      indicator: BoxDecoration(
        color: Colors.green,
        border: Border(
          top: BorderSide(color: Colors.white),
        ),
      ),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.access_alarm),
          text: "Alarm",
        ),
        Tab(
          icon: Icon(Icons.computer),
          text: "Computer",
        ),
      ],
    );
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Belajar TabBar"),
          bottom: tabBar,
        ),
        body: TabBarView(children: <Widget>[
          Center(child: Text("Tab 1")),
          Center(child: Text("Tab 2")),
        ]),
      ),
    );
  }
}
