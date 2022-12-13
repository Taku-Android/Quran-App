import 'package:flutter/material.dart';

class MyTheme {

  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);


  static final ThemeData lightTheme = ThemeData(

      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white ,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25) ,
            topRight: Radius.circular(25),
          )
        )
      ),
      iconTheme: IconThemeData(
        color: lightPrimary,) ,
      cardColor: Colors.white,
      accentColor: Colors.black,
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: lightPrimary,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
        color: Colors.transparent,
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w500
        ),
        iconTheme: IconThemeData(
            color: Colors.black
        ),


      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xFFB7935F),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
            size: 36,
            color: Colors.black
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 28,
        ),
        selectedLabelStyle: TextStyle(
          color: Colors.black,
        ),
        selectedItemColor: Colors.black,
        // unselectedLabelStyle:  ,
        // unselectedItemColor:
      ),
      textTheme: TextTheme(
          headline5: TextStyle(
            color: Colors.black,
          ) ,
          headline6: TextStyle(
            color: Colors.black ,
          ),
        subtitle1: TextStyle(
          color: Colors.black ,
        ),
        headline4: TextStyle(
          color: Colors.black,
          fontSize: 18
        ) ,


      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          primary: Colors.red.withOpacity(0),
        ),

      )


  );


  static final ThemeData darkTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: darkPrimary ,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25) ,
                topRight: Radius.circular(25),
              )
          )
      ),
      iconTheme: IconThemeData(
        color: Colors.yellow,) ,
      cardColor: darkPrimary,
      accentColor: Colors.yellow,
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: darkPrimary,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
        color: Colors.transparent,
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500
        ),
        iconTheme: IconThemeData(
            color: Colors.white
        ),


      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkPrimary,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
            size: 36,
            color: Color(0xFFFACC1D)
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 28,
        ),
        selectedLabelStyle: TextStyle(
          color: Color(0xFFFACC1D),
        ),
        selectedItemColor: Color(0xFFFACC1D),
        // unselectedLabelStyle:  ,
        // unselectedItemColor:
      ),
      textTheme: TextTheme(
          headline5: TextStyle(
            color: Colors.white,
          )
          ,
          headline6: TextStyle(
            color: Color(0xFFFACC1D),
            fontSize: 30,
          ) ,
          subtitle1: TextStyle(
            fontSize: 14,
            color: Colors.white ,
          ) ,
        headline4: TextStyle(
          color: Colors.white,
          fontSize: 18
        )
        ,
      )
      ,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent

        ),
      )


  );

}
