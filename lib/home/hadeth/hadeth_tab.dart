import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'hadeth_name_widget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> hadethList = [];

  @override
  Widget build(BuildContext context) {
    if (hadethList.isEmpty) readHadethFile();
    return Column(
      children: [
        Image.asset('assets/images/ahadeth_header_image.png'),
        Container(
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 2,
                ),
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Text(
              'الأحاديث',
              style: Theme.of(context).textTheme.headline4,
            )),
        Expanded(
          child: ListView.builder(
            itemBuilder: (_, index) {
              return HadethNameWidget(index, hadethList[index].title);
            },
            itemCount: hadethList.length,
          ),
        ),
      ],
    );
  }

  void readHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    // trim -> remove leading and trailing ' ' '\n' '\t'
    List<Hadeth> ahadethOfFile = [];
    List<String> allHadeth = fileContent.trim().split("#");
    for (int i = 0; i < allHadeth.length; i++) {
      List<String> hadethLines = allHadeth[i].trim().split('\n');
      String title = hadethLines[0];
      if (title.isEmpty) continue;
      hadethLines.removeAt(0);
      String content = hadethLines.join('\n');
      Hadeth h = Hadeth(title, content);
      ahadethOfFile.add(h);
    }

    hadethList = ahadethOfFile;
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth(this.title, this.content);
}
