import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/constants.dart';
import 'package:paypal/screens/activity/activity.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class UserActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: MediaQuery.of(context).size.width -
              (MediaQuery.of(context).size.height / 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Activity",
                style: GoogleFonts.manrope(
                  textStyle: TextStyle(
                    fontSize: 16.0,
                    color: kAllColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    SwipeablePageRoute(
                      onlySwipeFromEdge: true,
                      builder: (BuildContext context) => ActivityScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 35,
                  width: 60,
                  child: Center(
                    child: Text(
                      "View All",
                      style: GoogleFonts.manrope(
                        textStyle: TextStyle(
                          fontSize: 12.0,
                          color: Color.fromRGBO(155, 155, 155, 1.0),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
