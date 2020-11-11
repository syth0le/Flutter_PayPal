import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/constants.dart';

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: new Text("Activity",
              style: GoogleFonts.manrope(
                  textStyle: TextStyle(
                      color: kAllColor, fontWeight: FontWeight.w600))),
          elevation: 0,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: kAllColor,
              ),
              onPressed: null,
              color: kAllColor),
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
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            // color: Colors.red,
            // height: MediaQuery.of(context).size.height -
            //     (MediaQuery.of(context).size.height / 6.5),
            height: double.infinity,
            width: MediaQuery.of(context).size.width -
                (MediaQuery.of(context).size.height / 10),
            child: Column(
              children: [
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(0, 5, 0, 20),
                //   child: ContactsInput(),
                // ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      DateActivity("Today"),
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
                      DateActivity("Yesterday"),
                      ContactContainer(
                          activityContainerText: "Apple Store",
                          icon: "Apple",
                          timer: "Yesterday at 11:45 AM",
                          activityType: "shop",
                          sumOfActivity: "-,250"),
                      ContactContainer(
                          activityContainerText: "Pizza Delivery",
                          icon: "pizza",
                          timer: "Yesterday at 2:30 PM",
                          activityType: "shop",
                          sumOfActivity: "-,58.9"),
                      ContactContainer(
                          activityContainerText: "Amazon.com",
                          icon: "Amazon",
                          timer: "Yesterday at 6:28 PM",
                          activityType: "shop",
                          sumOfActivity: "-,300"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: new BottomNavigationBar(
          //   currentIndex: index,
          // onTap: (int index) {
          //   setState(() {
          //     this.index = index;
          //   }
          //   );
          //   _navigateToScreens(index);
          // },
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              title: Text(
                'Home',
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.w400, color: kAllColor),
              ),
              icon: SvgPicture.asset(
                'assets/icons/home_bottom_bar.svg',
                // color: kTextColor,
              ),
            ),
            BottomNavigationBarItem(
              title: Text('Contacts'),
              icon: SvgPicture.asset('assets/icons/users_bottom_bar.svg'),
            ),
            BottomNavigationBarItem(
              title: Text('Wallet'),
              icon: SvgPicture.asset('assets/icons/wallet_bottom_bar.svg'),
            ),
            BottomNavigationBarItem(
              title: Text('Settings'),
              icon: SvgPicture.asset('assets/icons/setting_bottom_bar.svg'),
            ),
          ],
          selectedItemColor: kTextColor,
          unselectedItemColor: kAllColor,
          // onTap: _onItemTapped,
        ));
  }
}

class DateActivity extends StatelessWidget {
  final String date;

  DateActivity(this.date);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
      child: Text(date,
          style: GoogleFonts.manrope(
            textStyle: TextStyle(
                fontSize: 12.0,
                color: Color.fromRGBO(155, 155, 155, 1.0),
                fontWeight: FontWeight.w400),
          )),
    );
  }
}

class ContactContainer extends StatelessWidget {
  final String activityContainerText;
  String icon;
  final String timer;
  final String activityType;
  final String sumOfActivity;
  ContactContainer(
      {this.activityContainerText,
      this.icon,
      this.timer,
      this.activityType,
      this.sumOfActivity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
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
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: new BoxDecoration(
                    color: Color(0xFFF5F7FA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: new Center(
                      child: activityType == "people"
                          ? Text(
                              icon,
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      color: kAllColor,
                                      fontWeight: FontWeight.w700)),
                            )
                          : SvgPicture.asset('assets/icons/$icon.svg')),
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
                    Text(activityContainerText,
                        style: GoogleFonts.manrope(
                          textStyle: TextStyle(
                              fontSize: 16.0,
                              color: kAllColor,
                              fontWeight: FontWeight.w400),
                        )),
                    Text(timer,
                        style: GoogleFonts.manrope(
                          textStyle: TextStyle(
                              fontSize: 12.0,
                              color: Color.fromRGBO(155, 155, 155, 1.0),
                              fontWeight: FontWeight.w400),
                        )),
                  ],
                )),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 10, 8),
                  child: Text(
                    sumOfActivity.split(",")[0] +
                        '\$' +
                        sumOfActivity.split(",")[1],
                    style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                          fontSize: 13.0,
                          color: activityType == "people"
                              ? Color(0xFF37D39B)
                              : Color(0xFF314261),
                          fontWeight: FontWeight.w600),
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
