import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationPersonWidget extends StatelessWidget {
  final String name;
  final String nameHero;
  final String height;
  final String weight;
  final String race;
  final Color color;

  const InformationPersonWidget({
    Key key,
    this.name,
    this.nameHero,
    this.height,
    this.weight,
    this.race,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        width: Get.width * 0.80,
        padding: EdgeInsets.only(
          left: 120,
          top: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
          color: color.withOpacity(0.3),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nameHero,
                style: GoogleFonts.bebasNeue(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                name,
                style: GoogleFonts.bebasNeue(
                  fontSize: 20,
                  color: Colors.white,
                  height: 0.7,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    height,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    weight,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    race,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
