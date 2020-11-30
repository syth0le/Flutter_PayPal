import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/navigator.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BottomBar()),
        );
      },
      textColor: Colors.white,
      padding: const EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Container(
        width: MediaQuery.of(context).size.width -
            (MediaQuery.of(context).size.height / 10),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF0070BA),
                Color(0xFF1546A0),
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        padding: const EdgeInsets.fromLTRB(120, 20, 120, 20),
        child: Text(
          'Log In',
          style: GoogleFonts.manrope(
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
