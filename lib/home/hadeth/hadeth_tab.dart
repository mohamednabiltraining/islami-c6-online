import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c6_online/home/hadeth/hadeth_details.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> hadethList = [];

  @override
  Widget build(BuildContext context) {
    if (hadethList.isEmpty) readHadethFile();
    //var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Scaffold(
        body: Column(children: [
      Image.asset('assets/images/basmala.png'),
      Container(
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(
                      color: Theme.of(context).primaryColor, width: 2))),
          padding: EdgeInsets.symmetric(vertical: 0),
          child: Text(
            AppLocalizations.of(context)!.ahadeth_names,
            style: Theme.of(context).textTheme.headline4,
          )),
      Expanded(
        child: ListView.builder(
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, HadethDetails.routeName,
                    arguments: hadethList[index]);
              },
              child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(hadethList[index].title,
                      style: Theme.of(context).textTheme.headline5)),
            );
          },
          itemCount: hadethList.length,
        ),
      ),
    ]));
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
