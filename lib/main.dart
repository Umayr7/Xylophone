import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded Note({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Note(color: Colors.red, soundNum: 1),
              Note(color: Colors.orange, soundNum: 2),
              Note(color: Colors.yellow, soundNum: 3),
              Note(color: Colors.green, soundNum: 4),
              Note(color: Colors.teal, soundNum: 5),
              Note(color: Colors.blue, soundNum: 6),
              Note(color: Colors.purple, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
