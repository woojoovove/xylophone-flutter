import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Future<void> playSound() async {
    final player = AudioPlayer();
    await player.setUrl('asset:/assets/note1.wav');
    player.play();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: playSound,
                  child: Text(''),
                ),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () async {
                    final player = AudioPlayer();
                    final duration =
                        await player.setUrl('asset:/assets/note2.wav');
                    player.play();
                  },
                  child: Text(''),
                ),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                  onPressed: playSound,
                  child: Text(''),
                ),
                TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.lightGreen),
                  onPressed: playSound,
                  child: Text(''),
                ),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: playSound,
                  child: Text(''),
                ),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: playSound,
                  child: Text(''),
                ),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.purple),
                  onPressed: playSound,
                  child: Text(''),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
