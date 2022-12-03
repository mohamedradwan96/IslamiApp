import 'package:flutter/material.dart';
import 'package:islami/AppTheme/mytheme.dart';
import 'package:islami/provider/settings_providers.dart';
import 'package:islami/home/Quran/sura_details.dart';
import 'package:provider/provider.dart';
import 'home/Hadith/hadeth_details.dart';
import 'home/Home/homeScreen.dart';
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
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],

      locale:Locale(settingsProvider.currentLanguage),


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




