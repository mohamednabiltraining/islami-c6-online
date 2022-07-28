import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> hadethList = [];

  @override
  Widget build(BuildContext context) {
    if (hadethList.isEmpty) readHadethFile();
    return ListView.builder(
      itemBuilder: (_, index) {
        return Text(hadethList[index].title);
      },
      itemCount: hadethList.length,
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
