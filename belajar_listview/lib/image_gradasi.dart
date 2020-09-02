import 'package:flutter/material.dart';

class ImageGradasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Image Gradasi"),
      ),
      body: Center(
          child: ShaderMask(
        shaderCallback: (retangle) {
          return LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)
              .createShader(
                  Rect.fromLTRB(0, 0, retangle.width, retangle.height));
        },
        blendMode: BlendMode.dstATop,
        child: Image(
            image: NetworkImage(
                "https://cdn.idntimes.com/content-images/duniaku/post/20191120/one-piece-roronoa-zoro-grin-678b5a11aa2ca2db330e3b05467e3a7f_600x400.jpg")),
      )),
    );
  }
}
