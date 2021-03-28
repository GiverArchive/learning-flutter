import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder()
                  ),
                  onChanged: (text) => email = text
                ),
                SizedBox( height: 10 ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder()
                  ),
                  onChanged: (text) => password = text
                ),
                SizedBox( height: 15 ),
                ElevatedButton(
                  child: Text('Entrar'),
                  onPressed: () {
                    if(email == 'example@giverplay.me' && password == 'senha123') {
                      Navigator.of(context).pushReplacementNamed('/home');
                    }
                  }
                )
              ]
            ),
          ),
        ),
      )
    );
  }
}
