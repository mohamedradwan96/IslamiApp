import 'package:flutter/material.dart';
import 'package:islami/mytheme.dart';
import 'package:islami/sura_details.dart';
import 'hadeth_details.dart';
import 'home/homeScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MaterialApp(
    localizationsDelegates: [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [
      Locale('en'),
      Locale('ar'),
    ],
    debugShowCheckedModeBanner: false,
    title: "Islam_App",
    initialRoute: HomeScreen.routeName,
    routes: {
      HomeScreen.routeName: (c) => HomeScreen(),
     SuraDetails.routName:(c)=> SuraDetails(),
      HadethDetails.routeName: (c) => HadethDetails()

    },
    theme:MyThemeData.lightTheme,
    darkTheme: MyThemeData.darkTheme,
    themeMode: ThemeMode.light,
  ));
}
