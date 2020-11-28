import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

// ignore: must_be_immutable
class ContactContainer extends StatelessWidget {
  String activityContainerText;
  String icon;
  String timer;
  String activityType;
  String sumOfActivity;
  ContactContainer(
      {this.activityContainerText,
      this.icon,
      this.timer,
      this.activityType,
      this.sumOfActivity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: Container(
        width: MediaQuery.of(context).size.width -
            (MediaQuery.of(context).size.height / 10),
        // height: 64,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 6), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
              child: Container(
                height: 32,
                width: 32,
                decoration: new BoxDecoration(
                  color: Color(0xFFF5F7FA),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: new Center(
                  child: activityType == "people"
                      ? Text(
                          icon,
                          style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 17,
                                color: kAllColor,
                                fontWeight: FontWeight.w700),
                          ),
                        )
                      : SvgPicture.asset('assets/icons/$icon.svg'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // decoration: new BoxDecoration(color: Colors.blue),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      activityContainerText,
                      style: GoogleFonts.manrope(
                        textStyle: TextStyle(
                          fontSize: 16.0,
                          color: kAllColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Text(
                      timer,
                      style: GoogleFonts.manrope(
                        textStyle: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(155, 155, 155, 1.0),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 10, 8),
                child: Text(
                  sumOfActivity.split(",")[0] +
                      '\$' +
                      sumOfActivity.split(",")[1],
                  style: GoogleFonts.manrope(
                    textStyle: TextStyle(
                      fontSize: 13.0,
                      color: activityType == "people"
                          ? Color(0xFF37D39B)
                          : Color(0xFF314261),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
