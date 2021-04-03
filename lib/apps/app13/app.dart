import 'package:flutter/material.dart';
import 'keyboard_page.dart';
import 'mouse_page.dart';
import 'home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:
            ThemeData(primarySwatch: Colors.red, brightness: Brightness.light),
        initialRoute: '/home',
        routes: {
          '/home': (context) => HomePage(),
          '/mouse': (context) => MousePage(),
          '/keyboard': (context) => KeyboardPage(),
        });
  }
}
