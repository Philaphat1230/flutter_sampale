import 'package:flutter/material.dart';
import 'package:flutter_callback/level2.dart';
class Level1 extends StatefulWidget {
  const Level1({super.key});

  @override
  State<Level1> createState() => _Level1State();
}

class _Level1State extends State<Level1> {
  int _counter =0;

  void updateCounter(int newCounter){
    setState(() {
      _counter = newCounter;
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_counter.toString()),
          Level2(counter: _counter,updateCounter: updateCounter,)
        ],
      ),
    );
  }
}