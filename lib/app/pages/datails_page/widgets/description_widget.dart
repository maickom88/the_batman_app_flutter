import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionWidget extends StatelessWidget {
  final String desc;

  const DescriptionWidget({Key key, this.desc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Text(
        desc,
        style: GoogleFonts.poppins(color: Colors.white),
      ),
    );
  }
}
