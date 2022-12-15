import 'package:flutter/material.dart';
import 'package:islami_app/Hadeth/hadeth_tab.dart';
import 'package:islami_app/Quran/quran_tab.dart';
import 'package:islami_app/Radio/radio_tab.dart';
import 'package:islami_app/Sebha/sebha_tab.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/setting/setting_Tab.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0 ;


  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(

              image: AssetImage(
                settingsProvider.getMainBackGroungImage()
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_title),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (newlySelected){
            setState(() {
              selectedIndex = newlySelected ;

            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                  AssetImage('assets/images/quran.png'),
                ),
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                  AssetImage('assets/images/radio.png'),
                ),
                label: AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                  AssetImage('assets/images/sebha.png'),
                ),
                label: AppLocalizations.of(context)!.mention),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                  AssetImage('assets/images/ahadeth.png'),
                ),
                label: AppLocalizations.of(context)!.hadeth),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const Icon(Icons.settings)
                ,
                label: AppLocalizations.of(context)!.settings),

          ],
        ),

        body: tabs[selectedIndex]


      ),
    );
  }

  List<Widget> tabs = [ QuranTab()  , RadioTab() , SebhaTab() , HadethTab(), SettingTab()  ] ;
}
