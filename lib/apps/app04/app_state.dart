import 'package:flutter/material.dart';

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
