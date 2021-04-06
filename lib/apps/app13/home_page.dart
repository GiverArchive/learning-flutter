import 'package:flutter/material.dart';

import 'mouse_page.dart';
import 'keyboard_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello, Flutterando')),
      drawer: Drawer(
          child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Giverzinho'),
            accountEmail: Text('contact@giverplay.me'),
            currentAccountPicture: ClipRRect(borderRadius: BorderRadius.circular(40), child: Image.asset('assets/images/dinastia.png')),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Início'),
            subtitle: Text('Navegar para a tela iniciar'),
            onTap: () => Navigator.of(context).pushReplacementNamed('/home'),
          ),
          ListTile(
            leading: Icon(Icons.mouse),
            title: Text('Mouse'),
            subtitle: Text('Sobre o mouse'),
            onTap: () => Navigator.of(context).pushNamed('/mouse'),
          ),
          ListTile(
            leading: Icon(Icons.keyboard),
            title: Text('Teclado'),
            subtitle: Text('Sobre o teclado'),
            onTap: () => Navigator.of(context).pushNamed('/keyboard'),
          )
        ],
      )),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Text('Computador digital', style: TextStyle(fontSize: 32)),
              Text('Teve início com o ENIAC', style: TextStyle(fontSize: 12)),
              Text('Rápido', style: TextStyle(fontSize: 12)),
              Text('Continuam evoluindo até hoje',
                  style: TextStyle(fontSize: 12)),
              Text('São legais', style: TextStyle(fontSize: 12)),
              Text('Podem passar o seu tempo', style: TextStyle(fontSize: 12)),
            ],
          )),
    );
  }
}
