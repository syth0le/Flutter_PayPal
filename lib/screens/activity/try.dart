import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class SegmentedControl extends StatefulWidget {
  @override
  _SegmentedControlState createState() => _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl> {
  int segmentedControlValue = 0;
//   List<List<String>> activities = List<String>["Mike Rine","M","1 minute ago","people","+,250"],
// List<String>[];

  Map<String, List<List>> arguments = {
    'Today': [
      ["Mike Rine", "M", "1 minute ago", "people", "+,250"],
      ["Google Drive", "Google", "2 hours ago", "shop", "-,138.5"],
      ["Casey Smith", "C", "9 hours ago", "people", "+,531"]
    ],
    'Yesterday': [
      ["Apple Store", "Apple", "Yesterday at 11:45 AM", "shop", "-,250"],
      ["Pizza Delivery", "pizza", "Yesterday at 2:30 PM", "shop", "-,58.9"],
      ["Amazon.com", "Amazon", "Yesterday at 6:28 PM", "shop", "-,300"],
      ["Viktor Dima", "V", "Yesterday at 6:59 PM", "people", "+,550"],
    ]
  };

  Widget segmentedControl() {
    return Center(
      child: Container(
        alignment: Alignment(0.0, 0.0),
        color: Colors.amber,
        height: 50,
        width: 300,
        child: CupertinoSlidingSegmentedControl(
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
        title: new Text(
          "Activity",
          style: GoogleFonts.manrope(
            textStyle: TextStyle(color: kAllColor, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: segmentedControl(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int theriGroupVakue = 0;

  final Map<int, Widget> logoWidgets = const <int, Widget>{
    0: Text("Head1", style: TextStyle(color: kAllColor, fontSize: 20.0)),
    1: Text("Head2", style: TextStyle(color: kAllColor, fontSize: 20.0)),
    2: Text("Head3", style: TextStyle(color: kAllColor, fontSize: 20.0))
  };

  static Widget giveCenter(String yourText) {
    return Center(
      child: Text(
        "Text: $yourText",
        style: TextStyle(
          color: kAllColor,
          fontSize: 20.0,
        ),
      ),
    );
  }

  List<Widget> bodies = [
    giveCenter("Home Page"),
    giveCenter("Search Page"),
    giveCenter("Chat Room")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodies[theriGroupVakue],
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Title",
          style: TextStyle(color: kTextColor),
        ),
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 45.0),
          child: Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 10.0),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: CupertinoSlidingSegmentedControl(
                    thumbColor: Color(0xFF005EA6),
                    backgroundColor: Color(0xFFF5F7FA),
                    groupValue: theriGroupVakue,
                    onValueChanged: (changeFromGroupValue) {
                      setState(
                        () {
                          theriGroupVakue = changeFromGroupValue;
                        },
                      );
                    },
                    children: logoWidgets,
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
