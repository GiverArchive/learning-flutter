import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  SingleChildScrollView _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network("https://github.com/GiverPlay007.png",
                      width: 72.0, height: 72.0),
                  Image.asset("assets/images/dinastia.png",
                      width: 72.0, height: 72.0)
                ]),
            SizedBox(height: 20),
            TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'Email', border: OutlineInputBorder()),
                onChanged: (text) => email = text),
            SizedBox(height: 10),
            TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Senha', border: OutlineInputBorder()),
                onChanged: (text) => password = text),
            SizedBox(height: 15),
            ElevatedButton(
                child: Text('Entrar'),
                onPressed: () {
                  if (email == 'example@giverplay.me' &&
                      password == 'senha123') {
                    Navigator.of(context).pushReplacementNamed('/home');
                  }
                })
          ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset("assets/images/foca.png", fit: BoxFit.cover)
          ),
          Container(color: Colors.black.withOpacity(0.3)),
          _body()
        ]
    ));
  }
}
