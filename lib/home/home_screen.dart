import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c6_online/home/hadeth/hadeth_tab.dart';
import 'package:islami_c6_online/home/providers/settings_provider.dart';
import 'package:islami_c6_online/home/quran/quran_tab.dart';
import 'package:islami_c6_online/home/radio/radio_tab.dart';
import 'package:islami_c6_online/home/settings/settings_tab.dart';
import 'package:islami_c6_online/home/tasbeh/tasbhe_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            provider.getMainBackGround(),
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.app_title,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor:
                    Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                icon: ImageIcon(
                  AssetImage('assets/images/ic_quran.png'),
                ),
                label: AppLocalizations.of(context)!.quran_title),
            BottomNavigationBarItem(
                backgroundColor:
                    Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                icon: ImageIcon(
                  AssetImage('assets/images/ic_hadeth.png'),
                ),
                label: AppLocalizations.of(context)!.hadeth_title),
            BottomNavigationBarItem(
                backgroundColor:
                    Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                icon: ImageIcon(
                  AssetImage('assets/images/ic_sebha.png'),
                ),
                label: AppLocalizations.of(context)!.tasbeh_title),
            BottomNavigationBarItem(
                backgroundColor:
                    Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                icon: ImageIcon(
                  AssetImage('assets/images/ic_radio.png'),
                ),
                label: AppLocalizations.of(context)!.radio_title),
            BottomNavigationBarItem(
                backgroundColor:
                    Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings_title),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab()
  ];
}
