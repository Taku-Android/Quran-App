import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  static const String routeName = 'Quran';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Container(
              margin: EdgeInsets.only(top: 50),
              child: Image.asset('assets/images/radio_bg.png')),
        ),
        Expanded(
          flex: 2,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0, backgroundColor: Colors.red.withOpacity(0)),
                        onPressed: () {},
                        child: Icon(Icons.keyboard_arrow_left,
                            size: 30, color: Theme.of(context).primaryColor)),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0, backgroundColor: Colors.red.withOpacity(0)),
                        onPressed: () {},
                        child: Icon(Icons.arrow_right,
                            size: 60, color: Theme.of(context).primaryColor)),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0, backgroundColor: Colors.red.withOpacity(0)),
                        onPressed: () {},
                        child: Icon(Icons.keyboard_arrow_right,
                            size: 30, color: Theme.of(context).primaryColor)),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
