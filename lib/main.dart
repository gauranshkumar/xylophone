import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  Widget createButton({int noteNumber, String text, Color colorName}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final audioPlayer = AudioCache();
          audioPlayer.play("note$noteNumber.wav");
        },
        color: colorName,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
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
            children: [
              createButton(
                  noteNumber: 1, text: "सा (do)", colorName: Colors.red),
              createButton(
                  noteNumber: 2, text: "रे (re)", colorName: Colors.orange),
              createButton(
                  noteNumber: 3, text: "ग (me) ", colorName: Colors.yellow),
              createButton(
                  noteNumber: 4, text: "म (fa)", colorName: Colors.green),
              createButton(
                  noteNumber: 5, text: "प (so)", colorName: Colors.teal),
              createButton(
                  noteNumber: 6, text: "ध (la)", colorName: Colors.blue),
              createButton(
                  noteNumber: 7, text: "नि (ti)", colorName: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
