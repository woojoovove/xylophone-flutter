import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Future<void> playSound(int noteNumber) async {
    final player = AudioPlayer();
    await player.setUrl('asset:/assets/note$noteNumber.wav');
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
                  onPressed: () => playSound(1),
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
                  onPressed: () => playSound(2),
                  child: Text(''),
                ),
                TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.lightGreen),
                  onPressed: () => playSound(3),
                  child: Text(''),
                ),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () => playSound(4),
                  child: Text(''),
                ),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () => playSound(5),
                  child: Text(''),
                ),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.purple),
                  onPressed: () => playSound(6),
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
