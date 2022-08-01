import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLang = 'en';
  ThemeMode currentTheme = ThemeMode.light;

  void changeTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) {
      return;
    }
    currentTheme = newTheme;
    notifyListeners();
  }

  void changeLanguage(String newLang) {
    if (newLang == currentLang) {
      return;
    }
    currentLang = newLang;
    notifyListeners(); //
  }

  bool isDarkMode() {
    return currentTheme == ThemeMode.dark;
  }

  String getMainBackGround() {
    return isDarkMode()
        ? 'assets/images/main_background_dark.png'
        : 'assets/images/main_background.png';
  }
}
