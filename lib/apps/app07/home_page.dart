import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello, Flutterando')
      ),
      body: Center(
        child: Switch(
          value: AppController.instance.isDarkThemeEnabled,
          onChanged: (value) => AppController.instance.changeDarkTheme()
        )
      )
    );
  }
}
