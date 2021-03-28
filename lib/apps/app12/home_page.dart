import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello, Flutterando'),
        actions: [ThemeSwitch()]
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Text('Cliques: $_counter'),
            Text('Cliques: $_counter'),
            Text('Cliques: $_counter'),
            Text('Cliques: $_counter'),
            Text('Cliques: $_counter'),
            Text('Cliques: $_counter'),
            Text('Cliques: $_counter'),
            Text('Cliques: $_counter'),
            Text('Cliques: $_counter'),
            Text('Cliques: $_counter'),
            Text('Cliques: $_counter'),
            Text('Cliques: $_counter'),
            Text('Cliques: $_counter'),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => setState(() => ++_counter)
      )
    );
  }
}

class ThemeSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkThemeEnabled,
      onChanged: (value) => AppController.instance.changeDarkTheme()
    );
  }
}