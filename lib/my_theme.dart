import 'package:flutter/material.dart';

class MyTheme {
  static const Color colorGold = Color(0xFFB7935F);
  static const Color colorYellow = Color(0xFFFACC1D);
  static const Color colorDarkBlue = Color(0xFF141A2E);

  static final ThemeData lightTheme = ThemeData(
      primaryColor: colorGold,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: const TextTheme(
          bodyText1: TextStyle(fontSize: 18, color: Colors.black),
          headline2: TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
          headline3: TextStyle(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          headline4: TextStyle(fontSize: 28, color: Colors.black),
          headline5: TextStyle(fontSize: 24, color: Colors.black)),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: colorGold,
        selectedIconTheme: IconThemeData(
          color: Colors.black,
        ),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        selectedLabelStyle: TextStyle(color: Colors.black),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ));
  static final ThemeData darkTheme = ThemeData(
      primaryColor: colorYellow,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: const TextTheme(
          bodyText1: TextStyle(fontSize: 18, color: Colors.white),
          headline2: TextStyle(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          headline3: TextStyle(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          headline4: TextStyle(fontSize: 28, color: Colors.white),
          headline5: TextStyle(fontSize: 24, color: Colors.white)),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: colorDarkBlue,
        selectedIconTheme: IconThemeData(
          color: colorYellow,
        ),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        selectedLabelStyle: TextStyle(color: colorYellow),
        selectedItemColor: colorYellow,
        unselectedItemColor: Colors.white,
      ));
}
