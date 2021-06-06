import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              getKey(0, Colors.red),
              getKey(1, Colors.orange),
              getKey(2, Colors.yellow),
              getKey(3, Colors.green),
              getKey(4, Colors.teal),
              getKey(5, Colors.blue),
              getKey(6, Colors.purple),
            ],
          )),
        ),
      ),
    );
  }

  Expanded getKey(int index, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          print('Text Pressed');
          final player = AudioCache();
          player.play('note${index + 1}.wav');
        },
        color: color,
      ),
    );
  }
}
