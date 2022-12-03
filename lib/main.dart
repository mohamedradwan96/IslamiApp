import 'package:flutter/material.dart';
import 'package:islami/mytheme.dart';
import 'package:islami/provider/settings_providers.dart';
import 'package:islami/sura_details.dart';
import 'package:provider/provider.dart';
import 'hadeth_details.dart';
import 'home/homeScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create:(buildContext)=>SettingsProviders(),

      child: IslamiApp()));

}


class IslamiApp extends StatelessWidget {
  const IslamiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProviders>(context);

    return MaterialApp(
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
      themeMode: settingsProvider.currentTheme,
    );
  }
}




