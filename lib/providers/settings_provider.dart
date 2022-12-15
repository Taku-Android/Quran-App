
import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{

  ThemeMode currentTheme = ThemeMode.light ;
  String currentLang = 'en' ;




  void changeLocale(String newLocale){
    currentLang = newLocale ;

    notifyListeners() ;
  }

  // observable pattern
  void changeTheme(ThemeMode newMode){
    currentTheme = newMode ;


    notifyListeners() ;
  }


  String getMainBackGroungImage(){
    return currentTheme == ThemeMode.dark?
    'assets/images/dark_bg.png'
     : 'assets/images/light_bg.png' ;


  }

  String getMainBackGroungImageOfSebha(){
    return currentTheme == ThemeMode.dark?
    'assets/images/sebha_bg_dark.png'
     :'assets/images/sebha_bg_light.png'

    ;


  }

  bool isDarkMode(){
    return currentTheme == ThemeMode.dark ;
  }

  bool isEnglish(){
    return currentLang == 'en' ;
  }

}