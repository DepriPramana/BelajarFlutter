import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FloatingPage extends StatelessWidget {
  double getSmallDiameter(context) => MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(context) => MediaQuery.of(context).size.width * 7 / 8;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      backgroundColor: Color(0xFFFEEEEE),
      body: Stack(
        children: <Widget>[
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xFFB22602), Color(0xFFFF60A7)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Container(
              child: Center(
                  child: Text(
                "driblee",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  fontSize: 25,
                  color: Colors.white,
                ),
              )),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xFFB22602), Color(0xFFFF60A7)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
            ),
          ),
          Positioned(
            right: -getSmallDiameter(context) / 3,
            bottom: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Color(0xFFFF4891),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFF4891),
                            ),
                          ),
                          labelText: "Email: ",
                          labelStyle: TextStyle(color: Color(0xFFFF4891)),
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.vpn_key,
                            color: Color(0xFFFF4891),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFF4891),
                            ),
                          ),
                          labelText: "Password: ",
                          labelStyle: TextStyle(color: Color(0xFFFF4891)),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                    child: Text(
                      "FORGOT PASSWORD",
                      style: TextStyle(color: Color(0xFFFF4891), fontSize: 11),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              splashColor: Colors.amber,
                              onTap: () {},
                              child: Center(
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [Color(0xFFB22602), Color(0xFFFF60A7)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          FloatingActionButton(
                            onPressed: () {},
                            elevation: 0,
                            mini: true,
                            heroTag: null,
                            child:
                                Image(image: AssetImage("assets/facebook.png")),
                          ),
                          FloatingActionButton(
                            onPressed: () {},
                            elevation: 0,
                            mini: true,
                            heroTag: null,
                            child:
                                Image(image: AssetImage("assets/Twitter.png")),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't Have An Account? ",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "SIGN UP ",
                      style: TextStyle(
                          fontSize: 11,
                          color: Color(0xFFFF4891),
                          fontWeight: FontWeight.w700),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
