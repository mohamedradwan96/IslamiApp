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
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            currentIndex: currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/quran.png')),
                label: "قرآن",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: "سبحة",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
                label: "أحاديث",
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: "راديو",
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
}
