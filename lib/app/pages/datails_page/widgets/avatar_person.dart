import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AvatarPerson extends StatelessWidget {
  final String hero;

  const AvatarPerson({Key key, this.hero}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: hero == 'assets/images/penguim.png'
          ? Get.height * 0.228
          : Get.height * 0.21,
      left: hero == 'assets/images/penguim.png'
          ? Get.width * 0.17
          : Get.width * 0.20,
      child: Image.asset(
        hero,
        height: hero == 'assets/images/penguim.png'
            ? Get.height * 0.28
            : Get.height * 0.30,
      ),
    );
  }
}
