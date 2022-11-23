import 'package:flutter/material.dart';
import 'package:islami/home/tabs/ahadeth.dart';
import 'package:islami/home/tabs/quran.dart';
import 'package:islami/home/tabs/radio.dart';
import 'package:islami/home/tabs/sebha.dart';

import '../mytheme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("إسلامي", style: Theme.of(context).textTheme.headline1),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            currentIndex: currentIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: "راديو",
                  backgroundColor: MyThemeData.colorGold),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                  label: "سبحة",
                  backgroundColor: MyThemeData.colorGold),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
                  label: "أحاديث",
                  backgroundColor: MyThemeData.colorGold),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/quran.png')),
                  label: "قرآن",
                  backgroundColor: MyThemeData.colorGold),
            ],
          ),
          body: tabs[currentIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    const RadioScreen(),
    const SebhaScreen(),
    const AhadethScreen(),
    const QuranScreen()
  ];
}
