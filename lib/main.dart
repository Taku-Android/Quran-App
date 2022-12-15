import 'package:flutter/material.dart';
import 'package:islami_app/MyTheme.dart';
import 'package:islami_app/hadeth_detail/hadeth_detail_screen.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/setting/setting_Tab.dart';
import 'package:islami_app/sura_detail/SuraDetailScreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext) => SettingsProvider(),
      child: MyApp()
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var settingsProvider = Provider.of<SettingsProvider>(context) ;

    return MaterialApp(


      theme: MyTheme.lightTheme ,
      darkTheme: MyTheme.darkTheme ,
      themeMode: settingsProvider.currentTheme,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      //if u wnat to make it one lang
      locale: Locale(settingsProvider.currentLang),

      routes: {

        HomeScreen.routeName : (_) => HomeScreen() ,
        SuraDetailScreen.routeName : (_) => SuraDetailScreen() ,
        HadethDetailScreen.routeName : (_) => HadethDetailScreen() ,
        SettingTab.routeName : (_) => SettingTab() ,


      },
      initialRoute: HomeScreen.routeName,
    );
  }
}