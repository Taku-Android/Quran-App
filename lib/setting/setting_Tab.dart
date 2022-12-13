import 'package:flutter/material.dart';
import 'package:islami_app/setting/theme_bottom_sheet.dart';

class SettingTab extends StatefulWidget {

  static const String routeName = 'settings';

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40 , horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Theme' ,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            InkWell(
              onTap: showThemeBottomSheet ,
              child: Container(
                margin: EdgeInsets.only(top: 5),
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10) ,
                  border: Border.all(color:
                  Theme.of(context).accentColor ,
                    width: 1
                  )
                ),
                child: Text('Light' ,
                style: Theme.of(context).textTheme.headline5,),
              ),
            ),
            SizedBox(height: 30,) ,

            Text('Language' ,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10) ,
                  border: Border.all(color:
                  Theme.of(context).accentColor ,
                      width: 1
                  )
              ),
              child: Text('English' ,
                style: Theme.of(context).textTheme.headline5,),
            ),

          ]
      ),
    );
  }

    void showThemeBottomSheet(){

    showModalBottomSheet(context: context ,
        builder: (buildContext){

          return ThemeBottomSheet() ;

        } );
  }



}