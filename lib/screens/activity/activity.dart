import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/constants.dart';

import '../../components.dart';
import 'components/activity_list.dart';

class ActivityScreen extends StatefulWidget {
  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  int segmentedControlValue = 0;

  int index = 0;

  Widget segmentedControl() {
    return Center(
      child: Container(
        alignment: Alignment(0.0, 0.0),
        height: 50,
        width: 300,
        child: CupertinoSlidingSegmentedControl(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          groupValue: segmentedControlValue,
          thumbColor: Color(0xFF005EA6),
          backgroundColor: Color(0xFFF5F7FA),
          children: <int, Widget>{
            0: Text(
              'All',
              style: GoogleFonts.manrope(
                textStyle: TextStyle(
                  fontSize: 16.0,
                  color:
                      segmentedControlValue == 0 ? Colors.white : kPrimaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            1: Text(
              'Income',
              style: GoogleFonts.manrope(
                textStyle: TextStyle(
                  fontSize: 16.0,
                  color:
                      segmentedControlValue == 1 ? Colors.white : kPrimaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            2: Text(
              'Outcome',
              style: GoogleFonts.manrope(
                textStyle: TextStyle(
                  fontSize: 16.0,
                  color:
                      segmentedControlValue == 2 ? Colors.white : kPrimaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          },
          onValueChanged: (value) {
            setState(
              () {
                segmentedControlValue = value;
              },
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: new Text(
          "Activity",
          style: GoogleFonts.manrope(
            textStyle: TextStyle(
              color: kAllColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: kAllColor,
          ),
          onPressed: () => Navigator.of(context).pop(),
          color: kAllColor,
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/find_contacts.svg',
              color: kAllColor,
            ),
            color: kAllColor,
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 55.0),
          child: Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 10.0),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: segmentedControl(),
                ),
                SizedBox(
                  width: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: double.infinity,
          width: MediaQuery.of(context).size.width -
              (MediaQuery.of(context).size.height / 10),
          child: Column(
            children: [
              Expanded(
                child: ScrollConfiguration(
                  behavior: MyCustomScroll(),
                  child: (segmentedControlValue == 0)
                      ? ActivityListAll()
                      : (segmentedControlValue == 1)
                          ? ActivityListIncome()
                          : ActivityListOutcome(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
