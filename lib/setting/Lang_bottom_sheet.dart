import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';


class LangBottomSheet extends StatefulWidget {
  @override
  State<LangBottomSheet> createState() => _LangBottomSheet();
}

class _LangBottomSheet extends State<LangBottomSheet> {
  @override
  Widget build(BuildContext context) {

    var settingProvider = Provider.of<SettingsProvider>(context);



    return Container(
      padding: EdgeInsets.all(13),
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          InkWell(onTap: () {

            settingProvider.changeLocale('en');

          }, child: 
          settingProvider.isEnglish()?
          getSelectedItem('English')
          : getUnSelectedItem('English')
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: (){
                settingProvider.changeLocale('ar');
              } ,
              child:
              settingProvider.isEnglish()?
              getUnSelectedItem('Arabic')
              : getSelectedItem('Arabic')
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
