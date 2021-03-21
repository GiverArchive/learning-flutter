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
      body: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => setState( () => ++_clicks )
      ),
    );
  }
}
