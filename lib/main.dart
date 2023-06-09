import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Magic 8 Ball'),
      ),
      body: const Ball(),
      backgroundColor: Colors.blue,
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = Random().nextInt(5) + 1;

  @override
  Widget build(BuildContext context) {
    return (MaterialButton(
      child: Center(
        child: Image.asset('images/ball$ballNumber.png'),
      ),
      onPressed: () {
        print(ballNumber);
        setState(() {
          ballNumber = Random().nextInt(5) + 1;
        });
      },
    ));
  }
}
