import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/constants.dart';

class InfoContainer extends StatelessWidget {
  String nameInfo;
  String valueInfo;
  InfoContainer({
    this.nameInfo,
    this.valueInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: MediaQuery.of(context).size.width -
            (MediaQuery.of(context).size.height / 10),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 12),
              child: Text(
                nameInfo,
                style: GoogleFonts.manrope(
                  textStyle: TextStyle(
                      fontSize: 16.0,
                      color: kAllColor,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 10, 12),
              child: Text(
                valueInfo,
                style: GoogleFonts.manrope(
                  textStyle: TextStyle(
                      fontSize: 16.0,
                      color: kAllColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
