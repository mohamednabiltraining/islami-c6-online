import 'package:flutter/material.dart';
import 'package:islami_c6_online/my_theme.dart';
import 'dart:math' as math;

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab>
    with SingleTickerProviderStateMixin {
  double step = 0;
  int counter = 0;
  List<String> tasbeh = ['سبحان الله', 'الحمد لله', 'الله اكبر'];
  int tasbehIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Image.asset(
                    'assets/images/head_of_seb7a.png',
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 78,
                  ),
                  Transform.rotate(
                    angle: step,
                    child: Image.asset(
                      'assets/images/body_of_seb7a.png',
                      height: 220,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'عدد التسبيحات',
            style: MyTheme.lightTheme.textTheme.headline5?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 70,
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: MyTheme.primaryColor.withOpacity(0.6),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '$counter',
              style: MyTheme.lightTheme.textTheme.headline4?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                step += 20;
                if (counter < 33) {
                  counter++;
                } else {
                  counter = 0;
                  if (tasbehIndex < tasbeh.length-1)
                    tasbehIndex++;
                  else
                    tasbehIndex = 0;
                }
              });
            },
            style: ElevatedButton.styleFrom(
              primary: MyTheme.primaryColor,
              textStyle: MyTheme.lightTheme.textTheme.headline5?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Text(
              tasbeh[tasbehIndex],
            ),
          ),
        ],
      ),
    );
  }
}
