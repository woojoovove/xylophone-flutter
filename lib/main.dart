import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
              child: TextButton(
            onPressed: () async {
              final player = AudioPlayer();
              final duration = await player.setUrl('asset:/assets/note1.wav');
              player.play();
            },
            child: Text('click me'),
          )),
        ),
      ),
    );
  }
}
