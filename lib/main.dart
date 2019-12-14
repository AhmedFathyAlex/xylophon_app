import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int no) {
    final player = AudioCache();
    player.play('note$no.wav');
  }

  Widget buildKey(int no, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(no);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(1, Colors.blue),
            buildKey(2, Colors.amber),
            buildKey(3, Colors.greenAccent),
            buildKey(4, Colors.cyan),
            buildKey(5, Colors.black),
            buildKey(6, Colors.red),
            buildKey(7, Colors.blueGrey),
          ],
        ),
      ),
    );
  }
}
