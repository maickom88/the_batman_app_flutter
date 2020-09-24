import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/constants.dart';
import 'widgets.dart';

class VhiclesInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      height: Get.height * 0.40,
      child: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          children: [
            Vehicles(vehicles: ImageConst.car1),
            Vehicles(vehicles: ImageConst.car2),
            Vehicles(vehicles: ImageConst.car3),
            Vehicles(vehicles: ImageConst.motorcycle),
          ],
        ),
      ),
    );
  }
}
