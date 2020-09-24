import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackgroundWidget extends StatelessWidget {
  final String image;

  const BackgroundWidget({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.4,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        height: Get.height,
      ),
    );
  }
}
