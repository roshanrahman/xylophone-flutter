import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple
  ];

  void _playAudio(int i) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$i.wav');
    print("Playing note $i");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (var i in [1, 2, 3, 4, 5, 6, 7]) buildExpanded(i),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildExpanded(int i) => Expanded(
          child: RaisedButton(
        padding: EdgeInsets.all(0),
        color: colors[i - 1],
        onPressed: () => _playAudio(i),
        child: Text(""),
      ));
}
