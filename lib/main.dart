import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Center(child: Text('Ask Me Anything')),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue.shade900,
        shape: CircularNotchedRectangle(),
      ),
      body: Ball(),
      backgroundColor: Colors.blue,
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int _ballNumber = 1;
  void sorting() {
    setState(() {
      _ballNumber = Random().nextInt(4) + 1;
      print('Ball number is $_ballNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          sorting();
        },
        child: Image.asset('images/ball$_ballNumber.png'),
      ),
    );
  }
}
