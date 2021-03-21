/*
  Aula 07
*/

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue), home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _clicks = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text(
            'Cliques: $_clicks',
            style: TextStyle(color: Colors.white, fontSize: 45.0)
          ),
          onTap: () => setState( () => ++_clicks ),
        )
      )
    );
  }
}

// ---------------------------------------------

class Exemplo extends StatefulWidget {
  @override
  ExemploState createState() {
    return ExemploState();
  }
}

class ExemploState extends State<Exemplo> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
