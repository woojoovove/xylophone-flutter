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
            child: Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () async {
                    final player = AudioPlayer();
                    final duration =
                        await player.setUrl('asset:/assets/note1.wav');
                    player.play();
                  },
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
                  onPressed: () async {
                    final player = AudioPlayer();
                    final duration =
                        await player.setUrl('asset:/assets/note3.wav');
                    player.play();
                  },
                  child: Text(''),
                ),
                TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.lightGreen),
                  onPressed: () async {
                    final player = AudioPlayer();
                    final duration =
                        await player.setUrl('asset:/assets/note4.wav');
                    player.play();
                  },
                  child: Text(''),
                ),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () async {
                    final player = AudioPlayer();
                    final duration =
                        await player.setUrl('asset:/assets/note5.wav');
                    player.play();
                  },
                  child: Text(''),
                ),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () async {
                    final player = AudioPlayer();
                    final duration =
                        await player.setUrl('asset:/assets/note6.wav');
                    player.play();
                  },
                  child: Text(''),
                ),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.purple),
                  onPressed: () async {
                    final player = AudioPlayer();
                    final duration =
                        await player.setUrl('asset:/assets/note7.wav');
                    player.play();
                  },
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
