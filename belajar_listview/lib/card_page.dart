import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Card"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                child: Column(
                  children: <Widget>[
                    buildCard(Icons.access_alarm, "Test A"),
                    buildCard(Icons.adb, "Test B"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String stringData) {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Icon(
              iconData,
              size: 64.0,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Icon(
              iconData,
              size: 64.0,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Icon(
              iconData,
              size: 64.0,
            ),
          ),
          Text(stringData),
        ],
      ),
    );
  }
}
