import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/constants.dart';

class SendToUser extends StatelessWidget {
  const SendToUser({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
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
                    'To:',
                    style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                        fontSize: 12.0,
                        color: Color.fromRGBO(155, 155, 155, 1.0),
                      ),
                    ),
                  ),
                  Text(
                    'Ann Nielsen',
                    style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                        fontSize: 16.0,
                        color: kAllColor,
                      ),
                    ),
                  ),
                  Text(
                    'nielsen.ann@gmail.com',
                    style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                        fontSize: 12.0,
                        color: Color.fromRGBO(155, 155, 155, 1.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
