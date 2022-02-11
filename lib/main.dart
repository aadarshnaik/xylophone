import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}


class XylophoneApp extends StatelessWidget {

  void playSound(int soundNum){
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

   buildKey({ required int soundNum, required Color color }){
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playSound(soundNum);
          },
          child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              buildKey(soundNum: 1, color: Colors.deepPurpleAccent),
              buildKey(soundNum: 2, color: Colors.indigo),
              buildKey(soundNum: 3, color: Colors.blue),
              buildKey(soundNum: 4, color: Colors.green),
              buildKey(soundNum: 5, color: Colors.yellow),
              buildKey(soundNum: 6, color: Colors.orange),
              buildKey(soundNum: 7, color: Colors.red),




              // Expanded(
              //   child: Container(
              //     color: Colors.teal,
              //     child: TextButton(
              //       onPressed: () {
              //        playSound(2);
              //       },
              //       child: Text(''),
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //     color: Colors.blue,
              //     child: TextButton(
              //       onPressed: () {
              //         playSound(3);
              //       },
              //       child: Text(''),
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //     color: Colors.green,
              //     child: TextButton(
              //       onPressed: () {
              //         playSound(4);
              //       },
              //       child: Text(''),
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //     color: Colors.yellow,
              //     child: TextButton(
              //       onPressed: () {
              //         playSound(5);
              //       },
              //       child: Text(''),
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //     color: Colors.orange,
              //     child: TextButton(
              //       onPressed: () {
              //         playSound(6);
              //       },
              //       child: Text(''),
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //     color: Colors.red,
              //     child: TextButton(
              //       onPressed: () {
              //         playSound(7);
              //       },
              //       child: Text(''),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

