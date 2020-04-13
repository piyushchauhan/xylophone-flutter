import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey({Color color, int num}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final audioPlayer = AudioCache();
          audioPlayer.play('note$num.wav');
        },
        child: Text('Click me'),
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
              buildKey(color: Colors.red[100], num: 1),
              buildKey(color: Colors.red[200], num: 2),
              buildKey(color: Colors.red[300], num: 3),
              buildKey(color: Colors.red[400], num: 4),
              buildKey(color: Colors.red[500], num: 5),
              buildKey(color: Colors.red[600], num: 6),
              buildKey(color: Colors.red[700], num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
