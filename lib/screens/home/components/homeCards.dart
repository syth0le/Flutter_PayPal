import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/constants.dart';
import 'package:paypal/screens/sendMoney/sendMoney.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class CardMenu extends StatelessWidget {
  int cardColor;
  int textColor;
  String text;
  CardMenu({
    this.cardColor,
    this.textColor,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          SwipeablePageRoute(
            onlySwipeFromEdge: true,
            builder: (BuildContext context) => SendMoneyScreen(),
          ),
        );
      },
      child: new Padding(
        padding: const EdgeInsets.fromLTRB(5, 15, 5, 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Container(
            height: 120,
            width: 107,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              gradient: cardColor == 1
                  ? LinearGradient(colors: [kGradientMin, kGradientMax])
                  : LinearGradient(
                      colors: [
                        Color(0xFFFFFFFF),
                        Color(0xFFFFFFFF),
                      ],
                    ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 0, 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SvgPicture.asset(
                      cardColor == 1
                          ? "assets/icons/download.svg"
                          : "assets/icons/upload.svg",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 0, 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "$text".split(' ').join("\n"),
                      style: GoogleFonts.manrope(
                        textStyle: TextStyle(
                          fontSize: 12.0,
                          color: cardColor == 1
                              ? kBackgroundColor
                              : Color(0xFF005EA6),
                          fontWeight: cardColor == 1
                              ? FontWeight.w600
                              : FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
