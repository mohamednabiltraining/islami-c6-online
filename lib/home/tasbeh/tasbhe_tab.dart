import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  String mydoaa = 'سبحان الله';
  int numberOfTasbe7 = 0;
  double angle = 0.2;
  int i = 0;

  @override
  Widget build(BuildContext context) {
    int i = 0;

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
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                  alignment: Alignment.bottomRight,
                  width: 70,
                  height: 70,
                  child:
                      Image(image: AssetImage('assets/images/head_seb7a.png'))),
              Container(
                  width: 150,
                  height: 150,
                  child: Transform.rotate(
                      angle: angle,
                      child: Image(
                          image: AssetImage('assets/images/body_seb7a.png')))),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text('عدد التسبيحات',
                      style: Theme.of(context).textTheme.headline4)),
              Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(24)),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Text('${numberOfTasbe7}',
                      style: Theme.of(context).textTheme.headline2)),
              ElevatedButton(
                  onPressed: () {
                    onPress();
                  },
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      primary: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)) // background
                      ),
                  child: Text(mydoaa,
                      style: Theme.of(context).textTheme.headline3))
            ],
          ),
        ),
      ),
    );
  }

  void onPress() {
    List<String> doaa = ['سبحان الله', 'الحمد لله', 'الله أكبر'];
    numberOfTasbe7++;
    angle = angle + 0.1;
    setState(() {});

    if (numberOfTasbe7 == 33) {
      numberOfTasbe7 = 0;
      i++;
    }
    if (i == 1) {
      mydoaa = doaa[1];
      setState(() {});
    } else if (i == 2) {
      mydoaa = doaa[2];
      setState(() {});
    } else if (i == 3) {
      i = 0;
      mydoaa = doaa[0];
      setState(() {});
    }
  }
}
