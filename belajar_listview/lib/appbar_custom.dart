import 'package:flutter/material.dart';

class AppbarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          flexibleSpace: Positioned(
            child: Container(
              child: Text(
                "Belajar Appbar custom Height",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              margin: EdgeInsets.all(20),
            ),
            bottom: 0,
            right: 0,
          ),
          backgroundColor: Colors.amber,
        ),
      ),
    );
  }
}
