import 'dart:math';
import 'package:flutter/material.dart';

class ButtonColorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Belajar Button Colorfull"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ColorfullButton(Colors.pink, Colors.orange, Icons.adb),
              ColorfullButton(Colors.green, Colors.pink, Icons.code),
              ColorfullButton(Colors.amber, Colors.pink, Icons.comment),
              ColorfullButton(Colors.cyan, Colors.yellow, Icons.compare),
            ],
          ),
        ));
  }
}

class ColorfullButton extends StatefulWidget {
  final Color mainColor, secondColor;
  final IconData iconData;
  @override
  _ColorfullButtonState createState() =>
      _ColorfullButtonState(mainColor, secondColor, iconData);

  ColorfullButton(this.mainColor, this.secondColor, this.iconData);
}

class _ColorfullButtonState extends State<ColorfullButton> {
  bool isPressed = false;
  Color mainColor, secondColor;
  IconData iconData;

  _ColorfullButtonState(this.mainColor, this.secondColor, this.iconData);
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: GestureDetector(
        onTapDown: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapUp: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapCancel: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: 10,
          shadowColor: (isPressed) ? secondColor : mainColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: <Widget>[
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    color: (isPressed) ? secondColor : mainColor,
                    child: Transform.rotate(
                      angle: -pi / 4,
                      child: Icon(
                        iconData,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                buildTransform(30, 30),
                buildTransform(-30, 30),
                buildTransform(30, -30),
                buildTransform(-30, -30)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Transform buildTransform(double x, double y) {
    return Transform.translate(
      offset: Offset(x, y),
      child: SizedBox(
        width: 50,
        height: 50,
        child: Material(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white.withOpacity(0.5),
        ),
      ),
    );
  }
}
