import 'package:flutter/material.dart';
import 'package:islami_app/MyTheme.dart';
import 'package:islami_app/hadeth_detail/hadeth_detail_screen.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/sura_detail/SuraDetailScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      theme: MyTheme.lightTheme,
      routes: {

        HomeScreen.routeName : (_) => HomeScreen() ,
        SuraDetailScreen.routeName : (_) => SuraDetailScreen() ,
        HadethDetailScreen.routeName : (_) => HadethDetailScreen() ,


      },
      initialRoute: HomeScreen.routeName,
    );
  }
}