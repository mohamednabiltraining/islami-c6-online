import 'package:flutter/material.dart';
import 'package:islami_c6_online/home/hadeth/hateth_details.dart';

class HadethNameWidget extends StatelessWidget {

  String title;
  int index;

  HadethNameWidget(this.index, this.title);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HatethDetailsScreen.routeName,
            arguments: AhadethDetailsArgs(index, title));
      },
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 6),
          alignment: Alignment.center,
          child: Text(
            title,
            textDirection: TextDirection.rtl,
            style: Theme.of(context).textTheme.headline5?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
