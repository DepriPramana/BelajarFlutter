import 'package:flutter/material.dart';

class HeroAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      appBar: AppBar(
        title: Text("Hero Animation"),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HeroSecondPage();
          }));
        },
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 100,
              width: 100,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://cdn1-production-images-kly.akamaized.net/oKcTrBEmwapR3-Yl7wHePv6VEug=/1280x720/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2847239/original/071409800_1562566736-one-piece-episode-892-Roronoa-zoro-seppuku-knife.jpg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HeroSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Second Page"),
      ),
      body: Center(
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(150),
            child: Container(
              height: 300,
              width: 300,
              child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://cdn1-production-images-kly.akamaized.net/oKcTrBEmwapR3-Yl7wHePv6VEug=/1280x720/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2847239/original/071409800_1562566736-one-piece-episode-892-Roronoa-zoro-seppuku-knife.jpg")),
            ),
          ),
        ),
      ),
    );
  }
}
