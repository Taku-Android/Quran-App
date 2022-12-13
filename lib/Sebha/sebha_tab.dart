


import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';


class SebhaTab extends StatefulWidget{


  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int tasbehNumber = 0 ;

  List<String> tasbehName = ['سبحان الله' ,

    'الله اكبر' ,
    'الحمد لله' ,
    'لا اله الا الله' ,
    'سبحان الله و بحمده سبحان الله العطيم' ,
    'استغفر الله و اتوب اليه' ,
    'لا حول ولا قوه الا بالله' ,
    'يارب رضاك و الجنه' ,

  ] ;

  int changeName = 0 ;

  @override
  Widget build(BuildContext context) {

    var settingsProvider = Provider.of<SettingsProvider>(context) ;

    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Image.asset(
              settingsProvider.getMainBackGroungImageOfSebha()
            ),


          SizedBox(height: 15,) ,

          Text('عدد التسبيحات' , style:  Theme.of(context).textTheme.headline5,) ,

          SizedBox(height: 20 ,) ,

            Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                padding: EdgeInsets.all(20),
                child: Text('$tasbehNumber' ,
                  style: Theme.of(context).textTheme.headline4,)),

          SizedBox(height: 20 ,) ,

           Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                padding: EdgeInsets.all(10),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      tasbehNumber++ ;
                    });
                  },
                    child: Text(tasbehName[changeName] ,
                      style: Theme.of(context).textTheme.headline5,))),


          Container(

              child: InkWell(
                  onTap: (){
                    setState(() {
                      if(changeName < tasbehName.length - 1){
                        changeName++;
                        tasbehNumber = 0 ;
                      }else{
                        changeName = 0 ;
                        tasbehNumber = 0 ;
                      }
                    });
                  },
                  child: Icon(Icons.arrow_right , size: 60,))
          ),





        ],
      ),
    );

  }
}