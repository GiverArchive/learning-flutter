import 'package:flutter/material.dart';

class KeyboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Teclado', style: TextStyle(fontSize: 32, color: Colors.black)),
          Text('Dispositivo de entrada',
              style: TextStyle(fontSize: 12, color: Colors.black)),
          Text('Teclas para digitar',
              style: TextStyle(fontSize: 12, color: Colors.black)),
          Text('Pode ser usado para navegar',
              style: TextStyle(fontSize: 12, color: Colors.black)),
          Text('Entrada de dados do usuário',
              style: TextStyle(fontSize: 12, color: Colors.black)),
        ],
      ),
    );
  }
}
