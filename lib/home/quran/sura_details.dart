import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c6_online/home/quran/verse_widget.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  void initState() {
    super.initState();
    // how to access context in init state func flutter
  }

  @override
  Widget build(BuildContext context) {
    //
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) readFile(args.index); // non-blocking code

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
          body: verses.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Container(
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 64),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24)),
                  child: ListView.separated(
                      itemBuilder: (_, index) {
                        return VerseWidget(index, verses[index]);
                      },
                      itemCount: verses.length,
                      separatorBuilder: (_, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 64),
                          color: Theme.of(context).primaryColor,
                          width: double.infinity,
                          height: 2,
                        );
                      }),
                ),
        ));
  }

  void readFile(int index) async {
    // how to read file in dart from assets
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines =
        content.split("\r\n"); // split each line a separate string
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  int index;
  String title;

  SuraDetailsArgs(this.index, this.title);
}
