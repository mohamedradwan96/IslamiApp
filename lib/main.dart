import 'package:flutter/material.dart';
import 'package:islami/mytheme.dart';

import 'home/homeScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Islam_App",
    initialRoute: HomeScreen.routeName,
    routes: {
      HomeScreen.routeName: (c) => HomeScreen(),
    },
    theme:MyThemeData.lightTheme,
    darkTheme: MyThemeData.darkTheme,
    themeMode: ThemeMode.light,
  ));
}
