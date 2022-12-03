import 'package:flutter/material.dart';

class SettingsProviders extends ChangeNotifier{

  ThemeMode currentTheme = ThemeMode.light;
  String currentLanguage ='en';


  void changeTheme(ThemeMode newMode){
    currentTheme = newMode;
    notifyListeners();
  }
  void changeLanguage(String newLanguage){
    currentLanguage = newLanguage;
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
  bool isArabicMode(){
    return currentLanguage== 'ar';
  }


}