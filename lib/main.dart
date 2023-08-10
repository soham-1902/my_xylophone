import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(String note) {
    AssetsAudioPlayer.newPlayer().open(
      Audio(note),
      autoStart: true,
      showNotification: true,
    );
  }

  Expanded buildKey(String note, Color c) {
    return Expanded(
      child: TextButton(
        child: Text(""),
        style: TextButton.styleFrom(backgroundColor: c),
        onPressed: () {
          playNote(note);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Text('Xylophone'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey('assets/note1.wav', Colors.red),
              buildKey('assets/note2.wav', Colors.orange),
              buildKey('assets/note3.wav', Colors.yellow),
              buildKey('assets/note4.wav', Colors.green),
              buildKey('assets/note5.wav', Colors.blue),
              buildKey('assets/note6.wav', Colors.indigo),
              buildKey('assets/note7.wav', Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}
