import 'package:flutter/material.dart';
import 'package:islami_c6_online/home/hadeth/hadeth_details.dart';
import 'package:islami_c6_online/home/hadeth/hadeth_tab.dart';

class HadethNameWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethNameWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: hadeth);
      },
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 6),
          alignment: Alignment.center,
          child: Text(
            hadeth.title,
            style: Theme.of(context).textTheme.headline5,
          )),
    );
  }
}
