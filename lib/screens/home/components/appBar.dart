import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3 + 2,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: new AssetImage('assets/images/appBarImg.png'),
          fit: BoxFit.cover,
        ),
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(41),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/icons/logo.svg'),
                Container(
                  height: 50,
                  width: 50,
                  decoration: new BoxDecoration(
                    color: Color(0xFFF5F7FA),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Image.asset(
                    'assets/images/face.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Row(
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "Hello, Vadim!",
                    style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "\$ 272.30",
                      style: GoogleFonts.manrope(
                        textStyle: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 40.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
                      child: Text(
                        "Your Balance",
                        style: GoogleFonts.manrope(
                          textStyle: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
