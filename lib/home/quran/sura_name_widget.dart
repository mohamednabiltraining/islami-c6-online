import 'package:flutter/material.dart';
import 'package:islami_c6_online/home/quran/sura_details.dart';

class SuraNameWidget extends StatelessWidget {
  String title;
  int index;

  SuraNameWidget(this.index, this.title);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: SuraDetailsArgs(index, title));
      },
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 6),
          alignment: Alignment.center,
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          )),
    );
  }
}
