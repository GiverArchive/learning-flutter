/*
  Aula 03-05
*/

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Flutterando',
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 50.0)
        )
      )
    );
  }
}