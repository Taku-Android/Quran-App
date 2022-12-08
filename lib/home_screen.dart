import 'package:flutter/material.dart';
import 'package:islami_app/Hadeth/hadeth_tab.dart';
import 'package:islami_app/Quran/quran_tab.dart';
import 'package:islami_app/Radio/radio_tab.dart';
import 'package:islami_app/Sebha/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/default_bg.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
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
                label: 'Quran'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                  AssetImage('assets/images/radio.png'),
                ),
                label: 'Radio'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                  AssetImage('assets/images/sebha.png'),
                ),
                label: 'Tasbeh'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                  AssetImage('assets/images/ahadeth.png'),
                ),
                label: 'Hadeth'),

          ],
        ),

        body: tabs[selectedIndex]


      ),
    );
  }

  List<Widget> tabs = [ QuranTab()  , RadioTab() , SebhaTab() , HadethTab()  ] ;
}
