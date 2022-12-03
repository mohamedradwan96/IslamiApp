import 'package:flutter/material.dart';
import 'package:islami/home/tabs/ahadeth.dart';
import 'package:islami/home/tabs/quran.dart';
import 'package:islami/home/tabs/radio.dart';
import 'package:islami/home/tabs/sebha.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/themeBottomSheet/theme_bottom_sheet.dart';
import 'package:islami/languageBottomSheet/Language_bottom_sheet.dart';
import 'package:islami/provider/settings_providers.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingsProviders>(context);
    return Stack(
      children: [
        Image.asset(
          settingsProvider.getmainBackground(),
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
            actions: [
              InkWell(
                onTap: (){
                  showLangBottomSheet();
                },
                child:  Icon(
                  Icons.language,
                  size: 30,
                ),
              ),
              const SizedBox(width: 5),
              InkWell(
                onTap: (){
                  showThemeBottomSheet();
                },
                child: Container(
                    margin: const EdgeInsets.only(right: 10,left: 10),
                    child: const Icon(
                      Icons.dark_mode,
                      size: 30,
                    )),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage('assets/images/quran.png')),
                label: AppLocalizations.of(context)!.quran,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage('assets/images/sebha.png')),
                label: AppLocalizations.of(context)!.sebha,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage('assets/images/ahadeth.png')),
                label: AppLocalizations.of(context)!.hadith,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage('assets/images/radio.png')),
                label: AppLocalizations.of(context)!.radio,
              ),
            ],
          ),
          body: tabs[currentIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranScreen(),
    SebhaScreen(),
    AhadethScreen(),
    RadioScreen(),
  ];

  void showThemeBottomSheet(){
    showModalBottomSheet(context: context, builder: (buildcontext){
      return const ThemeeBottomSheet();

    });


  }

  void showLangBottomSheet(){
    showModalBottomSheet(context: context, builder:(buildcontext){

      return const LanguageBottomSheet();
    });
  }

}
