import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage() : super();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _color = Colors.white;

  void _incrementCounter() {
    setState(() {
      _color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
          child: Container(
            color: _color,
            child: Center(
              child: Text(
                "Hey there",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          onTap: () {
            _incrementCounter();
          },
        ));
  }
}
