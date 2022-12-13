import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';


class ThemeBottomSheet extends StatefulWidget {
  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {

    var settingProvider = Provider.of<SettingsProvider>(context);



    return Container(
      padding: EdgeInsets.all(13),
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          InkWell(onTap: () {

            settingProvider.changeTheme(ThemeMode.dark);

          }, child: 
          settingProvider.isDarkMode()?
          getSelectedItem('Dark')
          : getUnSelectedItem('Dark')
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: (){
                settingProvider.changeTheme(ThemeMode.light);
              } ,
              child:
              settingProvider.isDarkMode()?
              getUnSelectedItem('Light')
              : getSelectedItem('Light')
          )
        ],
      ),
    );
  }

  Widget getSelectedItem(String title) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.yellow),
    );
  }

  Widget getUnSelectedItem(String title) {
    return Text(title, style: Theme.of(context).textTheme.headline5);
  }
}
