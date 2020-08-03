import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatelessWidget {
  final player = AudioCache();

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('sound$soundNumber.mp3');
  }

  Expanded buildKey({int soundNumber, String data}) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        child: RaisedButton(
          color: Colors.white,
          elevation: 3,
          splashColor: Colors.grey[400],
          onPressed: () {
            playSound(soundNumber);
          },
          child: Text(
            '$data',
            style: TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
        ),
      ),
    );
  }

  buildkey2({int soundNumber, String data}) {
    return Container(
      height: 50,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: RaisedButton(
        child: Text(
          '$data',
          style: TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        color: Colors.black,
        elevation: 3,
        splashColor: Colors.grey,
        onPressed: () {
          playSound(soundNumber);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(soundNumber: 1, data: 'C_B#_-_4'),
                SizedBox(height: 5),
                buildKey(soundNumber: 3, data: 'D_-_4'),
                SizedBox(height: 5),
                buildKey(soundNumber: 5, data: 'E_Fb_-_4'),
                SizedBox(height: 5),
                buildKey(soundNumber: 6, data: 'F_E#_-_4'),
                SizedBox(height: 5),
                buildKey(soundNumber: 8, data: 'G_-_4'),
                SizedBox(height: 5),
                buildKey(soundNumber: 10, data: 'A_-_4'),
                SizedBox(height: 5),
                buildKey(soundNumber: 12, data: 'B_Cb_-_4'),
                SizedBox(height: 5),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 60),
                  buildkey2(soundNumber: 2, data: 'Db_C#_-_4'),
                  SizedBox(height: 38),
                  buildkey2(soundNumber: 4, data: 'Eb_D#_-_4'),
                  SizedBox(height: 125),
                  buildkey2(soundNumber: 7, data: 'Gb_F#_-_4'),
                  SizedBox(height: 38),
                  buildkey2(soundNumber: 9, data: 'Ab_G#_-_4'),
                  SizedBox(height: 38),
                  buildkey2(soundNumber: 11, data: 'Bb_A#_-_4'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
