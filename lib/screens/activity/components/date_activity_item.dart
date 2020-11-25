import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateActivity extends StatelessWidget {
  final String date;

  DateActivity(this.date);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
      child: Text(date,
          style: GoogleFonts.manrope(
            textStyle: TextStyle(
                fontSize: 12.0,
                color: Color.fromRGBO(155, 155, 155, 1.0),
                fontWeight: FontWeight.w400),
          )),
    );
  }
}
