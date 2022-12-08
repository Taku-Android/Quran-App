import 'package:flutter/material.dart';
import 'package:islami_app/sura_detail/sura_detail_args.dart';

class SuraDetailScreen extends StatelessWidget {
  static const String routeName = 'SuraDetail';

  @override
  Widget build(BuildContext context) {
    /**
     *  down casting convert from pointer of type object to pointer of type
     *  SuraDetailScreenArgs
     *

     */
    SuraDetailScreenArgs args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailScreenArgs;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/default_bg.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(args.name),
                Image.asset('assets/images/icon_play.png')
              ],
            )
          ],
        ),
      ),
    );
  }
}
