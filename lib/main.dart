import 'package:flutter/material.dart';
import 'package:islami_c6_online/home/hadeth/hadeth_details.dart';
import 'package:islami_c6_online/home/home_screen.dart';
import 'package:islami_c6_online/home/quran/sura_details.dart';
import 'package:islami_c6_online/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
        HadethDetails.routeName: (_) => HadethDetails()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
