import 'package:flutter/material.dart';
import 'package:islami_app/hadeth_detail/Hadeth.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';


class HadethDetailScreen extends StatelessWidget {
  static const String routeName = 'hadeth-details';

  @override
  Widget build(BuildContext context) {
    /**
     *  down casting convert from pointer of type object to pointer of type
     *  SuraDetailScreenArgs
     *
     */
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    var settingsProvider = Provider.of<SettingsProvider>(context) ;

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(settingsProvider.getMainBackGroungImage()),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Card(
                elevation: 30,
                margin:  EdgeInsets.symmetric(horizontal: 20 , vertical: 50)  ,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                child: SingleChildScrollView(
                  child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
                          child: Text(
                            args.content,
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                ),
              ),
          ),
          

        ));
  }
}
