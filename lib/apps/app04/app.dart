import 'package:flutter/material.dart';
import 'app_state.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue), home: HomePage());
  }
}
