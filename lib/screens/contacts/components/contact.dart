import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/constants.dart';
import 'package:paypal/screens/sendMoney/sendMoney.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class ContactContainer extends StatelessWidget {
  const ContactContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            SwipeablePageRoute(
              onlySwipeFromEdge: true,
              builder: (BuildContext context) => SendMoneyScreen(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
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
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 48,
                  decoration: new BoxDecoration(
                    color: Color(0xFFF5F7FA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: new Center(
                    child: new Text(
                      "A",
                      style: GoogleFonts.manrope(
                        textStyle: TextStyle(
                          fontSize: 17,
                          color: kAllColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
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
                        'Ann Nielsen',
                        style: GoogleFonts.manrope(
                          textStyle: TextStyle(
                            fontSize: 16.0,
                            color: kAllColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        'nielsen.ann@gmail.com',
                        style: GoogleFonts.manrope(
                          textStyle: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(155, 155, 155, 1.0),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
