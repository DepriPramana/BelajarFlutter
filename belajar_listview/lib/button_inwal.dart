import 'package:flutter/material.dart';

class ButtonWell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Custom Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              child: Text("Raised Button"),
              color: Colors.red,
              shape: StadiumBorder(),
            ),
            Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [Colors.purple, Colors.pink],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    splashColor: Colors.amber,
                    child: Center(
                        child: Text(
                      "Custom Button",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
