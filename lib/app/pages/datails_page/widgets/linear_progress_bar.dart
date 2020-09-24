import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LinearProgressBar extends StatelessWidget {
  final double valueInteligence;
  final String field;
  final String skillIcons;
  final Color color;
  const LinearProgressBar(
      {Key key, this.valueInteligence, this.field, this.skillIcons, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: Get.width * 0.40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5),
          Image.asset(
            skillIcons,
            height: 23,
          ),
          SizedBox(height: 5),
          Text(
            field,
            style: GoogleFonts.bebasNeue(fontSize: 18, color: Colors.white),
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: LinearProgressIndicator(
              minHeight: 10,
              backgroundColor: Colors.grey[800],
              valueColor: AlwaysStoppedAnimation<Color>(
                color,
              ),
              value: valueInteligence,
            ),
          ),
        ],
      ),
    );
  }
}
