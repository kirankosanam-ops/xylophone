/*
 * *
 *  * Created by kmani on 7/4/21, 10:18 PM
 *  * Copyright (c) 2021 . All rights reserved.
 *  * Last modified 7/4/21, 10:16 PM
 *
 */

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Xylophone'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _playNote(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded _buildNote(int flex, int noteNumber, Color color) {
    return Expanded(
      flex: flex,
      child: TextButton(
        onPressed: () {
          _playNote(noteNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildNote(7, 7, Colors.red),
            _buildNote(6, 6, Colors.orange),
            _buildNote(5, 5, Colors.yellow),
            _buildNote(4, 4, Colors.green),
            _buildNote(3, 3, Colors.teal),
            _buildNote(2, 2, Colors.blue),
            _buildNote(1, 1, Colors.purple),
          ],
        ),
      ),
    );
  }
}
