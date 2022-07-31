import 'package:flutter/material.dart';

class AhadethWidget extends StatelessWidget {

  String content;
  int index;

  AhadethWidget(this.index, this.content);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
          alignment: Alignment.center,
          child: Text(
            '$content',
            textDirection: TextDirection.rtl,
            style: Theme.of(context).textTheme.bodyText1,
          )),
    );
  }
}
