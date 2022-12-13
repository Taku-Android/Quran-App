import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/sura_detail/sura_detail_args.dart';
import 'package:provider/provider.dart';

import '../providers/settings_provider.dart';


class SuraDetailScreen extends StatefulWidget {
  static const String routeName = 'SuraDetail';

  @override
  State<SuraDetailScreen> createState() => _SuraDetailScreenState();
}

class _SuraDetailScreenState extends State<SuraDetailScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    /**
     *  down casting convert from pointer of type object to pointer of type
     *  SuraDetailScreenArgs
     *
     */
    SuraDetailScreenArgs args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailScreenArgs;
    if(verses.isEmpty) {
      readFile(args.index + 1);
    }

    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingsProvider.getMainBackGroungImage()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),
        body: verses.isEmpty?
        Center(child: CircularProgressIndicator(),)

            : Card(
          elevation: 30,
          margin:  EdgeInsets.symmetric(horizontal: 30 , vertical: 70)  ,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
              child: ListView.separated(itemBuilder: (_ , index){

                int sora = index + 1 ;

          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10),

            child: Text(verses[index] + '($sora)' ,
              textDirection: TextDirection.rtl ,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5 ,
            ),
          );

        } ,
        itemCount: verses.length ,
                separatorBuilder: (_ ,__){
                  return Container(
                      color: Theme.of(context).accentColor,
                      height: 1,
                      width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 64),
                  );
                },
        ),
            )

      ),
    );
  }

  void readFile(int fileIndex) async{

    String fileContent = await rootBundle.loadString('assets/files/$fileIndex.txt');
    List<String> lines =  fileContent.trim().split('\n');

    setState(() {
      verses = lines ;
    });

  }
}
