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
            title: Text("Belajar Image"),
          ),
          body: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.red,
                        padding: EdgeInsets.all(10),
                        child: Image(
                            image: NetworkImage(
                                "https://mmc.tirto.id/image/otf/700x0/2018/08/01/film-one-piece-wikipedia_ratio-16x9.jpg")),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.blue,
                        padding: EdgeInsets.all(10),
                        child: Image(
                            image: NetworkImage(
                                "https://mmc.tirto.id/image/otf/700x0/2018/08/01/film-one-piece-wikipedia_ratio-16x9.jpg")),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.blue,
                        padding: EdgeInsets.all(10),
                        child: Image(
                            image: NetworkImage(
                                "https://mmc.tirto.id/image/otf/700x0/2018/08/01/film-one-piece-wikipedia_ratio-16x9.jpg")),
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.black12,
                        padding: EdgeInsets.all(10),
                        child: Image(image: AssetImage("images/pngwave.png")),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.orange,
                        padding: EdgeInsets.all(10),
                        child: Image(image: AssetImage("images/pngwave.png")),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.amber,
                        padding: EdgeInsets.all(10),
                        child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage("images/pngwave.png"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
