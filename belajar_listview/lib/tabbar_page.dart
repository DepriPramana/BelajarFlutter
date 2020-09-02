import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Belajar TabBar"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.access_alarm),
                text: "Alarm",
              ),
              Tab(
                child: Image(
                  image: AssetImage("assets/facebook.png"),
                  fit: BoxFit.cover,
                ),
              ),
              Tab(
                icon: Icon(Icons.adb),
                text: '',
              ),
              Tab(
                text: "News",
              )
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          Center(child: Text("Tab 1")),
          Center(child: Text("Tab 2")),
          Center(child: Text("Tab 3")),
          Center(child: Text("Tab 4")),
        ]),
      ),
    );
  }
}
