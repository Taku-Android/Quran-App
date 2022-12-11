
import 'package:flutter/material.dart';

class MyTheme{

  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);


  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor : Colors.transparent,
    primaryColor: lightPrimary,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      color: Colors.transparent ,
      titleTextStyle: TextStyle(
        color: Colors.black ,
        fontSize: 30 ,
        fontWeight: FontWeight.w500
      ) ,
      iconTheme: IconThemeData(
        color: Colors.black
      ) ,


    ) ,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xFFB7935F),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(
        size: 36  ,
        color: Colors.black
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white ,
        size: 28 ,
      ) ,
      selectedLabelStyle: TextStyle(
        color: Colors.black ,
      ),
     selectedItemColor: Colors.black ,
     // unselectedLabelStyle:  ,
     // unselectedItemColor:
    ) ,
   /*
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          primary: Colors.transparent
      ) ,

    )
    */

  ) ;

  static final ThemeData darktheme = ThemeData(
      scaffoldBackgroundColor : Colors.transparent,
      primaryColor: darkPrimary,
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          color: Colors.transparent ,
          titleTextStyle: TextStyle(
              color: Colors.black ,
              fontSize: 30 ,
              fontWeight: FontWeight.w500
          )

      ) ,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xFFB7935F),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
            size: 36  ,
            color: Colors.black
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white ,
          size: 24 ,
        ) ,
        selectedLabelStyle: TextStyle(
          color: Colors.black ,
        ),
        selectedItemColor: Colors.black ,
        // unselectedLabelStyle:  ,
        // unselectedItemColor:
      )
  );

}
