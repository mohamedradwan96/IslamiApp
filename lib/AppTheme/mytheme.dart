import 'package:flutter/material.dart';

class MyThemeData {
  static const Color colorBlack = Color.fromRGBO(36, 36, 36, 1.0);
  static const Color colorGold = Color.fromRGBO(183, 147, 95, 1.0);

  static ThemeData lightTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius:
      BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25)
      )
      )
    ),
    backgroundColor: Colors.grey.shade300,
      iconTheme: const IconThemeData(color: colorGold),
      primaryColor: colorGold,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: colorBlack),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      textTheme:  const TextTheme(
          headline1: TextStyle(
              color: colorBlack,fontSize: 30, fontWeight: FontWeight.bold, ),
        headline2: TextStyle(
          fontSize: 32, fontWeight: FontWeight.bold, color: colorBlack,),
          subtitle1: TextStyle(
              color: colorGold, fontSize: 26, fontWeight: FontWeight.bold),
          subtitle2: TextStyle(
              color: colorBlack, fontSize: 24, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(
              color: colorBlack, fontSize: 20, fontWeight: FontWeight.bold),
        headline3: TextStyle(
            color: colorBlack, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: colorGold,
          selectedItemColor: colorBlack,
          unselectedItemColor: Colors.white));

  static const Color primaryDark = Color.fromRGBO(20, 26, 46, 1.0);
  static const Color colorYellow = Color.fromRGBO(250, 204, 29, 1.0);
  static const Color colorWhite = Color.fromRGBO(255, 255, 255, 1.0);

  static ThemeData darkTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: primaryDark,
          shape: RoundedRectangleBorder(borderRadius:
          BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25)
          )
          )
      ),
      backgroundColor: Colors.blueGrey,
      iconTheme: const IconThemeData(color: colorYellow),
      primaryColor: primaryDark,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(color: colorWhite),
        iconTheme: IconThemeData(color: colorWhite),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      textTheme:  const TextTheme(
          headline1: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
          headline2: TextStyle(
            fontSize: 32, fontWeight: FontWeight.bold, color: colorYellow,),
          headline3: TextStyle(
              color: colorWhite, fontSize: 20, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(
              color: colorWhite, fontSize: 26, fontWeight: FontWeight.bold),
          subtitle2: TextStyle(
              color: colorWhite, fontSize: 24, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(
              color: colorYellow, fontSize: 20, fontWeight: FontWeight.bold),

      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: primaryDark,
          selectedItemColor: colorYellow,
          unselectedItemColor: Colors.white));
}
