import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _clicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello, Flutterando')
      ),
      body: Center(
        child: Text(
          'Cliques: $_clicks',
          style: TextStyle(color: Colors.black, fontSize: 45.0)
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => setState( () => ++_clicks )
      ),
    );
  }
}
