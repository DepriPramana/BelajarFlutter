import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MediaPLayerPage extends StatefulWidget {
  @override
  _MediaPLayerPageState createState() => _MediaPLayerPageState();
}

class _MediaPLayerPageState extends State<MediaPLayerPage> {
  AudioPlayer audioPlayer;

  String durasi = "00:00:00";
  _MediaPLayerPageState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }
  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
    setState(() {
      durasi = "00:00:00";
    });
  }

  void replaySound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Music Player"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              durasi,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    playSound(
                        "https://file-examples-com.github.io/uploads/2017/11/file_example_MP3_2MG.mp3");
                  },
                  child: Icon(Icons.play_arrow),
                ),
                RaisedButton(
                  onPressed: () {
                    pauseSound();
                  },
                  child: Icon(Icons.pause),
                ),
                RaisedButton(
                  onPressed: () {
                    stopSound();
                  },
                  child: Icon(Icons.stop),
                ),
                RaisedButton(
                  onPressed: () {
                    replaySound();
                  },
                  child: Icon(Icons.replay),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
