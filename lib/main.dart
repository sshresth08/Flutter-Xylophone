import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int? note) {
    final player = AudioPlayer();
    player.play(AssetSource('note$note.wav'));
  }

  Expanded buildKey({Color? color, int? node}){
   return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(node);
        },
        child: Text(' '),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, node:1),
              buildKey(color: Colors.orange, node:2),
              buildKey(color: Colors.yellow, node:3),
              buildKey(color: Colors.green, node:4),
              buildKey(color: Colors.tealAccent, node:5),
              buildKey(color: Colors.blue, node:6),
              buildKey(color: Colors.purpleAccent, node:7),
            ],
          ),
        ),
      ),
    );
  }
}
