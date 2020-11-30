import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/constants.dart';
import 'package:paypal/screens/activity/activity.dart';

class BankCardContainer extends StatelessWidget {
  String company;
  String cardNum;
  String imgName;
  BankCardContainer({
    this.company,
    this.cardNum,
    this.imgName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: GestureDetector(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => ()),
          // );
        },
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width -
                (MediaQuery.of(context).size.height / 10),
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
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 48,
                    child: new Center(
                      child: SvgPicture.asset('assets/icons/$imgName.svg'),
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
                          company,
                          style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                              fontSize: 16.0,
                              color: kAllColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Text(
                          cardNum,
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
      ),
    );
  }
}

class CardInfo extends StatelessWidget {
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
                "My banking cards",
                style: GoogleFonts.manrope(
                  textStyle: TextStyle(
                      fontSize: 12.0,
                      color: Color.fromRGBO(155, 155, 155, 1.0),
                      fontWeight: FontWeight.w400),
                ),
              ),
              GestureDetector(
                // When the child is tapped, show a snackbar.
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ActivityScreen()),
                  );
                },
                child: Container(
                  height: 20,
                  width: 50,
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/plus.svg'),
                      Text(
                        "Add",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
