
import 'package:flutter/material.dart';
import 'package:islami_app/hadeth_detail/Hadeth.dart';
import 'package:islami_app/hadeth_detail/hadeth_detail_screen.dart';

class HadethtitleWidget extends StatelessWidget {

  Hadeth hadeth ;

  HadethtitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell( // to make the text have onTap fun
      onTap: () {
        Navigator.pushNamed(context, HadethDetailScreen.routeName,
            arguments: hadeth );
      },
      child: Container(
        padding: EdgeInsets.all(5),
        child: Text(
          hadeth.title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
