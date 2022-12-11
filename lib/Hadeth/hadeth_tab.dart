


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Hadeth/hadeth_title_widget.dart';
import 'package:islami_app/hadeth_detail/Hadeth.dart';

class HadethTab extends StatefulWidget{

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
   String titleTv = '' ;

   String contentTv = '' ;

   List<Hadeth> allHadethList  = [] ;

  @override
  Widget build(BuildContext context) {
  if(allHadethList.isEmpty) {
    loadHadethFiles();
  }

    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          Expanded(
            flex: 3,
            child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Image.asset('assets/images/hadeth_img.png')),
          ) ,


          Expanded(
            flex: 5,
            child: Container(

              child: ListView.separated(itemBuilder: (_ , index){

                return HadethtitleWidget(allHadethList[index]);

              } , separatorBuilder:(_ ,index){
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  height: 1,
                  color: Theme.of(context).primaryColor,
                  width: double.infinity,
                );
              }, itemCount: allHadethList.length ,),
            ),
          )




        ],
      ),
    );

  }

  void loadHadethFiles() async {

    List<Hadeth> hadethList = [];

    String content = await rootBundle.loadString('assets/files/ahadeth.txt');

    List<String> allHadethContent =  content.trim().split('#');

      for(int i = 0 ; i < allHadethContent.length ; i++) {
        String singleHadeth = allHadethContent[i].trim();
        int indexOfFirstLine = singleHadeth.indexOf('\n');
        String title = singleHadeth.substring(0, indexOfFirstLine);
        String singleContent = singleHadeth.substring(indexOfFirstLine + 1);

        Hadeth h = new Hadeth(title, singleContent);
        hadethList.add(h);


      }

      allHadethList = hadethList ;

    setState(() {

    });

  }
}