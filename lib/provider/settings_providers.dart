import 'package:flutter/material.dart';

class SettingsProviders extends ChangeNotifier{

  ThemeMode currentTheme = ThemeMode.light;


  void changeTheme(ThemeMode newMode){
    currentTheme = newMode;
    notifyListeners();
  }

  String getmainBackground(){
    return currentTheme ==ThemeMode.light?
    "assets/images/background.png"
        :"assets/images/darkBackground.png";

  }

  bool isDarkMode(){
    return currentTheme==ThemeMode.dark;
  }


}