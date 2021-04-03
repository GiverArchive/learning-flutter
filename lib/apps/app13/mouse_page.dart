import 'package:flutter/material.dart';

class MousePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Mouse', style: TextStyle(fontSize: 32, color: Colors.black)),
          Text('Dispositivo de entrada',
              style: TextStyle(fontSize: 12, color: Colors.black)),
          Text('Representa ações humanas',
              style: TextStyle(fontSize: 12, color: Colors.black)),
          Text('Bom para navegar',
              style: TextStyle(fontSize: 12, color: Colors.black)),
        ],
      ),
    );
  }
}
