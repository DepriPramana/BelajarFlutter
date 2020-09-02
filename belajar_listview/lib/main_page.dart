import 'package:belajar_listview/appbar_custom.dart';
import 'package:belajar_listview/button_inwal.dart';
import 'package:belajar_listview/card_page.dart';
import 'package:belajar_listview/hero_animation.dart';
import 'package:belajar_listview/list_page.dart';
import 'package:belajar_listview/login_floating.dart';
import 'package:belajar_listview/media_query.dart';
import 'package:belajar_listview/opacity_page.dart';
import 'package:belajar_listview/second_page.dart';
import 'package:belajar_listview/tabbar_page.dart';
import 'package:belajar_listview/textfield_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.adb,
          color: Colors.white,
        ),
        title: Text("Main Page"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {}),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff0096ff), Color(0xff6610f2)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
            image: DecorationImage(
              image: AssetImage("assets/batik.png"),
              fit: BoxFit.none,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  child: RaisedButton(
                    child: Text("Tabbar Screen"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return TabBarPage();
                      }));
                    },
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text("AppBar Custom"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AppbarCustom();
                      }));
                    },
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text("Hero Animation"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HeroAnimation();
                      }));
                    },
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text("Floating Screen"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return FloatingPage();
                      }));
                    },
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text("Opacity Screen"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return OpacityPage();
                      }));
                    },
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text("Button Well Screen"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ButtonWell();
                      }));
                    },
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text("Media Query Screen"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MediaQueryPage();
                      }));
                    },
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text("Text Field Screen"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return TextFieldPage();
                      }));
                    },
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text("ListView Custom Screen"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MyListView();
                      }));
                    },
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text("Seconds Screen"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SecondPage();
                      }));
                    },
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text("Card Screen"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CardPage();
                      }));
                    },
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text("Second screen"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SecondPage();
                  }));
                },
              ),
              RaisedButton(
                child: Text("Screen Card"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CardPage();
                  }));
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
