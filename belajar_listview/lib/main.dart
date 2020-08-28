import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Stack"),
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          child: Container(
                            color: Colors.white,
                          ),
                          flex: 1,
                        ),
                        Flexible(
                          child: Container(
                            color: Colors.black12,
                          ),
                          flex: 1,
                        )
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          child: Container(
                            color: Colors.black12,
                          ),
                          flex: 1,
                        ),
                        Flexible(
                          child: Container(
                            color: Colors.white,
                          ),
                          flex: 1,
                        )
                      ],
                    ))
              ],
            ),
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Flutter is here to stay! Welcome to The Complete Flutter App Development Course ( The World’s First Complete Dart and Flutter Course).  I am so excited to introduce this new course to all of you!  Firstly, if you haven’t heard ( I am sure you already have, but just in case), Flutter is the new Cross-platform Mobile Development Framework created by Google, which allows developers to build Android and iOS Apps. Why is Flutter a BIG Deal? Well, Flutter is a big deal because any developer ( or anyone who wants to learn mobile development ) can now build Native Android and iOS apps with one codebase ONLY!  Which means, instead to having to learn Objective-C or Swift to build iOS apps, and Java, or Kotlin to build Android apps, you can  now use Flutter Mobile Development Framework to build apps that run Natively on both iOS and Android devices using the General-purpose Dart Programming Language. What Students are Saying About the Course? “This is really good course” – Ibrahim. ★★★★ (4.5 stars rating) “Paulo is a great instructor I’m really very happy that he made Dart & Flutter course. – Ahmed. ★★★★★ (5 stars rating) ” “. – Jakub. ★★★★★ (5 stars rating) ” “. – Adam. ★★★★★ (5 stars rating) “Perfect!  You deserve more than 5 stars!  “. – Zvezdan. ★★★★★ (5 stars rating) This is such a huge deal in the fragmented Mobile Development Industry where more than often, developers needed to learn and master several programming languages and frameworks to build mobile apps.  Now with Flutter and Dart, those days are behind! My name is Paulo Dichone, creator of the most best-selling online programming courses (with over 40,000 happy and satisfied students), and this time I have designed this comprehensive course – The Complete Flutter App Development Course especially for YOU. This course was designed so that you can start learning the Dart Programming Language ( which is used with Flutter SDK to build Native iOS and Android Apps) and Flutter Framework and make cross-platform mobile apps right away – in as little as SIX WEEKS. I’ll take you step-by-step through engaging HD video tutorials and build your Dart and Flutter programming knowledge through making real-world apps e.g EarthQuake , BMI, Weather, Chat app and so many more! You’ll be learning all you’ll need to know about the general-purpose Dart Programming Language from scratch.  Even if you’ve never programmed before, you will be coding and understand all of the programming concepts you need to start building robust and beautifully crafted iOS and Android Apps with Flutter SDK. By the end of this course, you will be fluently programming in Dart and be ready to make your own apps or start a freelancing job as a Dart & Flutter App developer. You’ll also have a portfolio of over 10 (and counting) apps that you can show off to any potential employer. Note that this course will be updated frequently since Flutter and Dart is still evolving and I want to make sure that you are always up-to-date.  So, do expect A LOT of new added materials, lectures and updates! Sign up today, and look forward to Don’t waste your time –  Don’t waste another minute of your precious life on poor quality videos on YouTube. Or instructors with accents you can’t understand. Or teachers who have no real world in-person teaching experience. Your time is precious. I offer the best instructions with carefully crafted content, beautiful animations and learning by doing. So what are you waiting for? Click the buy now button and join the world’s first Complete Dart and Flutter Course. Who is the target audience?",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment(0, 0.8),
              child: RaisedButton(
                color: Colors.orange,
                onPressed: () {},
                child: Text("Read Article"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
