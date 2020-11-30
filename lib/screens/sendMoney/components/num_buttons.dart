import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/constants.dart';

class NumKeyboard extends StatelessWidget {
  const NumKeyboard({
    Key key,
    @required this.buttons,
  }) : super(key: key);

  final List buttons;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height / 2.1,
        width: MediaQuery.of(context).size.height / 2.1,
        child: GridView.builder(
          itemCount: buttons.length,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 30.0,
              childAspectRatio: 1.3,
              crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            return NumButton(
              buttonText: buttons[index],
              color: Color(0x1AFFFFFF),
              // color: Colors.white,
              textColor: kAllColor,
            );
          },
        ),
      ),
    );
  }
}

class NumButton extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final icon;

  NumButton({this.color, this.textColor, this.buttonText, this.icon});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(35),
      child: Container(
        color: color,
        child: Center(
          child: Text(
            buttonText,
            style: GoogleFonts.manrope(
              textStyle: TextStyle(
                color: kAllColor,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
