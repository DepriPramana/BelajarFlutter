import 'package:belajar_listview/model/posapi_model.dart';
import 'package:flutter/material.dart';
import 'package:belajar_listview/utils/extensions.dart';

class APIPostPage extends StatefulWidget {
  @override
  _APIPostPageState createState() => _APIPostPageState();
}

class _APIPostPageState extends State<APIPostPage> {
  PostResult postResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar API POST"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text((postResult.isNullOrEmpty())
                  ? "Hasil Data"
                  : postResult.name),
            ),
            Container(
              child: RaisedButton(
                onPressed: () {
                  PostResult.connectAPI("Depri", "Consultan").then((value) {
                    postResult = value;
                    setState(() {});
                  });
                },
                child: Text("POST DATA"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
