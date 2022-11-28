import 'package:flutter/material.dart';

class MyThemeData {
  static const Color colorBlack = Color.fromRGBO(36, 36, 36, 1.0);
  static const Color colorGold = Color.fromRGBO(183, 147, 95, 1.0);

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: colorBlack),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      textTheme: const TextTheme(
          headline1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: colorBlack,
      ),
        subtitle1: TextStyle(color:colorGold,fontSize:24,fontWeight: FontWeight.bold),
          subtitle2: TextStyle(color:colorBlack,fontSize:22,fontWeight: FontWeight.bold),
          bodyText1: TextStyle(color:colorBlack,fontSize:20,fontWeight: FontWeight.bold)
      ),

      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: colorGold,
          selectedItemColor: colorBlack,
          unselectedItemColor: Colors.white));

  static ThemeData darkTheme =
      ThemeData(scaffoldBackgroundColor: Colors.transparent);
}
