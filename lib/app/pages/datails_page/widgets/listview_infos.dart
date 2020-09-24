import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/constants.dart';
import 'widgets.dart';

class ListViewInfo extends StatelessWidget {
  final Map infoHero;

  const ListViewInfo({Key key, this.infoHero}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Get.height * 0.15,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          LinearProgressBar(
            valueInteligence: infoHero['inteligence'],
            field: 'INTELIGENCE',
            skillIcons: IconConst.inteligence,
            color: infoHero['colorBase'],
          ),
          LinearProgressBar(
            valueInteligence: infoHero['strenght'],
            field: 'STRENGHT',
            skillIcons: IconConst.strenght,
            color: infoHero['colorBase'],
          ),
          LinearProgressBar(
            valueInteligence: infoHero['speed'],
            skillIcons: IconConst.speed,
            field: 'SPEED',
            color: infoHero['colorBase'],
          ),
          LinearProgressBar(
            skillIcons: IconConst.power,
            valueInteligence: infoHero['power'],
            field: 'POWER',
            color: infoHero['colorBase'],
          ),
        ],
      ),
    );
  }
}
