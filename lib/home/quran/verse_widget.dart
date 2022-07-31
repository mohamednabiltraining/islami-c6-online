import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String content;
  int index;

  VerseWidget(this.index, this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
        alignment: Alignment.center,
        child: Text(
          '$content { ${index + 1} }',
          textDirection: TextDirection.rtl,
          style: Theme.of(context).textTheme.bodyText1,
        ));
  }
}
