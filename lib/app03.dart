/*
  Aula 07
*/

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final String title;

  const App({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Container(
        child: Center(
          child: Text(title, style: TextStyle(color: Colors.white, fontSize: 45.0))
        )
      )
    );
  }
}
