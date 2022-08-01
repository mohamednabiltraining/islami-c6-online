import 'package:flutter/material.dart';

import 'hadeth_tab.dart';

class HadethDetails extends StatelessWidget {
  HadethDetails({Key? key}) : super(key: key);

  static const String routeName = 'Hadeth-Details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/background_pattern.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(args.title),
        ),
        body: Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            alignment: Alignment.topRight,
            child: Text(args.content,
                style: Theme.of(context).textTheme.bodyText1)),
      ),
    );
  }
}
