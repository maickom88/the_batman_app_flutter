import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'app/pages/home_page/home_page.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Batman',
      home: HomePage(),
    ),
  );
}
