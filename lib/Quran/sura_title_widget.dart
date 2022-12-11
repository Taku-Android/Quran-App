import 'package:flutter/material.dart';
import 'package:islami_app/sura_detail/SuraDetailScreen.dart';
import 'package:islami_app/sura_detail/sura_detail_args.dart';

class SuraTitleWidget extends StatelessWidget {
  String title;
  int index;

  SuraTitleWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell( // to make the text have onTap fun
      onTap: () {
        Navigator.pushNamed(context, SuraDetailScreen.routeName,
            arguments: SuraDetailScreenArgs(title, index));
      },
      child: Container(
        padding: EdgeInsets.all(5),
        child: Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
