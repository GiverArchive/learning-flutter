import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static final AppController instance = AppController();

  bool isDarkThemeEnabled = false;

  changeDarkTheme() {
    isDarkThemeEnabled = !isDarkThemeEnabled;
    notifyListeners();
  }
}
