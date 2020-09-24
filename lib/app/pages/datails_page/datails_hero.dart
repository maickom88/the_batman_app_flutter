import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/components/button.dart';

import '../../core/constants/constants.dart';
import 'widgets/widgets.dart';

class DatailsHero extends StatefulWidget {
  @override
  _DatailsHeroState createState() => _DatailsHeroState();
}

class _DatailsHeroState extends State<DatailsHero> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back(result: false);
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: PageView(
          onPageChanged: (p) {
            setState(() {
              print(p);
              page = p;
            });
          },
          children: [
            StackPageWidget(infoHero: HeroDetails.batman),
            StackPageWidget(infoHero: HeroDetails.penguim),
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 60, right: 25),
          child: ButtonComponent(
            text: 'READ MORE',
            buttonColor: page == 0
                ? HeroDetails.batman['colorBase']
                : HeroDetails.penguim['colorBase'],
          ),
        ),
      ),
    );
  }
}
