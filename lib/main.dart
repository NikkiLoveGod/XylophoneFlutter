import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // add it to your class as a static member
  static AudioCache player = AudioCache();

  Expanded buildXylophoneKey({
    @required Color color,
    @required int note,
  }) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () => player.play('note$note.wav'),
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
              buildXylophoneKey(
                color: Colors.red,
                note: 1,
              ),
              buildXylophoneKey(
                color: Colors.orange,
                note: 2,
              ),
              buildXylophoneKey(
                color: Colors.yellow,
                note: 3,
              ),
              buildXylophoneKey(
                color: Colors.green,
                note: 4,
              ),
              buildXylophoneKey(
                color: Colors.teal,
                note: 5,
              ),
              buildXylophoneKey(
                color: Colors.blue,
                note: 6,
              ),
              buildXylophoneKey(
                color: Colors.purple,
                note: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
