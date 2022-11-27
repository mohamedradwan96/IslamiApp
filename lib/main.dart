import 'package:flutter/material.dart';
import 'package:islami/mytheme.dart';
import 'package:islami/sura_details.dart';

import 'home/homeScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Islam_App",
    initialRoute: HomeScreen.routeName,
    routes: {
      HomeScreen.routeName: (c) => HomeScreen(),
     SuraDetails.routName:(c)=> SuraDetails(),

    },
    theme:MyThemeData.lightTheme,
    darkTheme: MyThemeData.darkTheme,
    themeMode: ThemeMode.light,
  ));
}
