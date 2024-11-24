import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Future<void> playSound(int noteNumber) async {
    final player = AudioPlayer();
    await player.setUrl('asset:/assets/note$noteNumber.wav');
    player.play();
  }

  Expanded buildKey(Color color, int noteNumber) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        onPressed: () => playSound(noteNumber),
        child: Text(''),
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
          children: [
            buildKey(Colors.red, 1),
            buildKey(Colors.orange, 2),
            buildKey(Colors.yellow, 3),
            buildKey(Colors.lightGreen, 4),
            buildKey(Colors.green, 5),
            buildKey(Colors.blue, 6),
            buildKey(Colors.purple, 7),
          ],
        ),
      ),
    );
  }
}
