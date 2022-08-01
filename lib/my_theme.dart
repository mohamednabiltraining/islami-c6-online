import 'package:flutter/material.dart';

class MyTheme {
  static final Color primaryColor = Color(0xFFB7935F);
  static final Color cardColor = Color(0xF6B29B5A);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      cardColor: cardColor,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 18, color: Colors.black),
          headline2: TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
          headline3: TextStyle(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          headline4: TextStyle(fontSize: 28, color: Colors.black),
          headline5: TextStyle(fontSize: 24, color: Colors.black)),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(
          color: Colors.black,
        ),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        selectedLabelStyle: TextStyle(color: Colors.black),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ));
}
