import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white70,
          appBar: AppBar(
            backgroundColor: Colors.black54,
            title: Text(
              "Magic 8 Ball"
            ),
          ),
          body: magicBall(),
        ),
      ),
    );

class magicBall extends StatefulWidget {
  @override
  _magicBallState createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  int decisionNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('images/ball$decisionNum.png'),
        onPressed: (){
          setState(() {
            decisionNum = Random().nextInt(5)+1;
          });
        },
      ),
    );
  }
}
