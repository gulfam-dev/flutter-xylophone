import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  Widget buildKey(int soundNumber, Color color) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Xylophone App',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(1, Colors.red),
            buildKey(2, Colors.yellow),
            buildKey(3, Colors.blue),
            buildKey(4, Colors.orange),
            buildKey(5, Colors.brown),
            buildKey(6, Colors.green),
            buildKey(7, Colors.purple),
          ],
        ),
      ),
    );
  }
}
