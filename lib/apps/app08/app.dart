import 'package:flutter/material.dart';
import 'app_controller.dart';
import 'home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (ctx, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDarkThemeEnabled ? Brightness.dark : Brightness.light
          ),
          home: HomePage()
        );
      }
    );
  }
}
