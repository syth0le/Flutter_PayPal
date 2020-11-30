import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SendButton extends StatelessWidget {
  const SendButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      textColor: Colors.white,
      padding: const EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 0.0),
            colors: [
              Color(0xFF0070BA),
              Color(0xFF1546A0),
            ],
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        padding: const EdgeInsets.fromLTRB(120, 20, 120, 20),
        child: Text(
          'Send',
          style: GoogleFonts.manrope(
            textStyle: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
