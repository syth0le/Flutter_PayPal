import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/constants.dart';
import 'package:paypal/screens/activity/activity.dart';
import 'package:paypal/screens/activity/components/activity_item_container.dart';
import 'package:paypal/screens/sendMoney/sendMoney.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Color(0xFF0070BA), //or set color with: Color(0xFF0000FF)
    ));
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height / 3),
        child: Container(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: new AssetImage('assets/images/appBarImg.png'),
                fit: BoxFit.cover),
            color: Colors.blue,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(41)),
          ),
          child: Column(
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
                      child: Image.asset('assets/images/face.png',
                          fit: BoxFit.fill),
                    ),
                  ],
                ),
              ),
              Row(),
              Row(),
              Row()
            ],
          ),
        ),
      ),
      body: Center(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            HorizList(),
            Container(
              // height: double.infinity,
              width: MediaQuery.of(context).size.width -
                  (MediaQuery.of(context).size.height / 10),
              child: Column(
                children: [
                  CardInfo(),
                  ContactContainer(
                      activityContainerText: "Mike Rine",
                      icon: "M",
                      timer: "1 minute ago",
                      activityType: "people",
                      sumOfActivity: "+,250"),
                  ContactContainer(
                      activityContainerText: "Google Drive",
                      icon: "Google",
                      timer: "2 hours ago",
                      activityType: "shop",
                      sumOfActivity: "-,138.5"),
                  ContactContainer(
                      activityContainerText: "Casey Smith",
                      icon: "C",
                      timer: "9 hours ago",
                      activityType: "people",
                      sumOfActivity: "+,531"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HorizList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 140,
      child: new ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        // itemBuilder: (context, index) {
        //   return new CardMenu();
        // }
        children: [
          CardMenu(cardColor: 1, textColor: 1, text: "Send Money"),
          CardMenu(cardColor: 2, textColor: 2, text: "Request Money"),
          CardMenu(cardColor: 2, textColor: 2, text: "Billings"),
          CardMenu(cardColor: 2, textColor: 2, text: "Others"),
        ],
      ),
    );
  }
}

class CardMenu extends StatelessWidget {
  int cardColor;
  int textColor;
  String text;
  CardMenu({
    this.cardColor,
    this.textColor,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          SwipeablePageRoute(
              onlySwipeFromEdge: true,
              builder: (BuildContext context) => SendMoneyScreen()),
        );
      },
      child: new Padding(
        padding: const EdgeInsets.fromLTRB(5, 15, 5, 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Container(
            height: 120,
            width: 107,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              gradient: cardColor == 1
                  ? LinearGradient(colors: [kGradientMin, kGradientMax])
                  : LinearGradient(colors: [
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                    ]),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 0, 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SvgPicture.asset(cardColor == 1
                        ? "assets/icons/download.svg"
                        : "assets/icons/upload.svg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 0, 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("$text".split(' ').join("\n"),
                        style: GoogleFonts.manrope(
                          textStyle: TextStyle(
                              fontSize: 12.0,
                              color: cardColor == 1
                                  ? kBackgroundColor
                                  : Color(0xFF005EA6),
                              fontWeight: cardColor == 1
                                  ? FontWeight.w600
                                  : FontWeight.w500),
                        )),
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
              Text("Activity",
                  style: GoogleFonts.manrope(
                    textStyle: TextStyle(
                        fontSize: 16.0,
                        color: kAllColor,
                        fontWeight: FontWeight.w600),
                  )),
              GestureDetector(
                // When the child is tapped, show a snackbar.
                onTap: () {
                  Navigator.push(
                    context,
                    SwipeablePageRoute(
                        onlySwipeFromEdge: true,
                        builder: (BuildContext context) => ActivityScreen()),
                  );
                },
                child: Container(
                    // color: Colors.amber,
                    height: 35,
                    width: 60,
                    child: Center(
                      child: Text("View All",
                          style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 12.0,
                                color: Color.fromRGBO(155, 155, 155, 1.0),
                                fontWeight: FontWeight.w400),
                          )),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
