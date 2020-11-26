import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/screens/activity/activity.dart';

import '../../constants.dart';

// class WalletScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: ,)
//   }
// }

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('App Bar!'),
    //     flexibleSpace: Image(
    //       image: AssetImage('assets/images/wallet_appbar.png'),
    //       fit: BoxFit.cover,
    //     ),
    //     backgroundColor: Colors.transparent,
    //   ),
    //   body: Container(),
    // );

    return SafeArea(
      child: Material(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverPersistentHeader(
              delegate: MySliverAppBar(expandedHeight: 160),
              // pinned: true,
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              const SizedBox(height: 80),
              UserInfo(),
              InfoContainer(nameInfo: "Name ", valueInfo: "Vadim Demenko"),
              InfoContainer(
                  nameInfo: "E-mail", valueInfo: "vadikforz@gmail.com"),
              InfoContainer(nameInfo: "Phone", valueInfo: "+4 1782 049 294"),
              CardInfo(),
              BankCardContainer(
                  company: 'Visa',
                  cardNum: '4*** **** ****2 4746',
                  imgName: 'visa'),
              BankCardContainer(
                  company: 'MasterCard',
                  cardNum: '4*** **** ****3 5236',
                  imgName: 'mastercard'),
              BankCardContainer(
                  company: 'MIR',
                  cardNum: '6*** **** ****4 1200',
                  imgName: 'visa'),
              BankCardContainer(
                  company: 'Maestro',
                  cardNum: '3*** **** ****32 2587',
                  imgName: 'visa'),
              BankCardContainer(
                  company: 'Visa',
                  cardNum: '4*** **** ****2 4746',
                  imgName: 'visa'),
              BankCardContainer(
                  company: 'MasterCard',
                  cardNum: '4*** **** ****3 5236',
                  imgName: 'mastercard'),
            ])),
          ],
        ),
      ),
    );
  }
}

class InfoContainer extends StatelessWidget {
  String nameInfo;
  String valueInfo;
  InfoContainer({
    this.nameInfo,
    this.valueInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: MediaQuery.of(context).size.width -
            (MediaQuery.of(context).size.height / 10),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 12),
              child: Text(nameInfo,
                  style: GoogleFonts.manrope(
                    textStyle: TextStyle(
                        fontSize: 16.0,
                        color: kAllColor,
                        fontWeight: FontWeight.w400),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 10, 12),
              child: Text(valueInfo,
                  style: GoogleFonts.manrope(
                    textStyle: TextStyle(
                        fontSize: 16.0,
                        color: kAllColor,
                        fontWeight: FontWeight.w600),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({@required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        Image.asset(
          'assets/images/wallet_appbar.png',
          fit: BoxFit.cover,
        ),
        Positioned(
            top: expandedHeight / 15 - shrinkOffset,
            child: AnimatedOpacity(
                duration: Duration(seconds: 1),
                opacity: (1 - shrinkOffset / expandedHeight),
                child: Container(
                    // padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon:
                                SvgPicture.asset('assets/icons/back_arrow.svg'),
                            onPressed: null),
                        Text("Your wallet",
                            style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )),
                        IconButton(
                            icon: SvgPicture.asset(
                                'assets/icons/note_wallet.svg'),
                            onPressed: null)
                      ],
                    )))),
        // AnimatedOpacity(
        //     duration: Duration(seconds: 1),
        //     opacity: expandedHeight / shrinkOffset,
        //     child: Container(
        //         // padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
        //         height: 100,
        //         width: MediaQuery.of(context).size.width,
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             IconButton(
        //                 icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
        //                 onPressed: null),
        //             Text("Your wallet",
        //                 style: GoogleFonts.manrope(
        //                   textStyle: TextStyle(
        //                       fontSize: 16.0,
        //                       color: Colors.white,
        //                       fontWeight: FontWeight.w600),
        //                 )),
        //             IconButton(
        //                 icon: SvgPicture.asset('assets/icons/note_wallet.svg'),
        //                 onPressed: null)
        //           ],
        //         ))),
        // Center(
        //   child: AnimatedOpacity(
        //     duration: Duration(milliseconds: 200),
        //     opacity: shrinkOffset / expandedHeight,
        //     child: Text(
        //       "MySliverAppBar",
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontWeight: FontWeight.w700,
        //         fontSize: 23,
        //       ),
        //     ),
        //   ),
        // ),
        Positioned(
          top: expandedHeight / 2 - shrinkOffset,
          left: MediaQuery.of(context).size.width / 3.5,
          child: Opacity(
              opacity: (1 - shrinkOffset / expandedHeight),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset('assets/images/face.png'),
                // child: SvgPicture.asset('assets/images/face.svg'),
              )),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

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
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 48,
                      child: new Center(
                          child: SvgPicture.asset('assets/icons/$imgName.svg')),
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
                        Text(company,
                            style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 16.0,
                                  color: kAllColor,
                                  fontWeight: FontWeight.w400),
                            )),
                        Text(cardNum,
                            style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 12.0,
                                  color: Color.fromRGBO(155, 155, 155, 1.0),
                                  fontWeight: FontWeight.w400),
                            )),
                      ],
                    )),
                  ),
                ],
              )),
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
              Text("My banking cards",
                  style: GoogleFonts.manrope(
                    textStyle: TextStyle(
                        fontSize: 12.0,
                        color: Color.fromRGBO(155, 155, 155, 1.0),
                        fontWeight: FontWeight.w400),
                  )),
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
                      Text("Add",
                          style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 12.0,
                                color: Color.fromRGBO(155, 155, 155, 1.0),
                                fontWeight: FontWeight.w400),
                          ))
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

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: MediaQuery.of(context).size.width -
              (MediaQuery.of(context).size.height / 10),
          child: Text("Personal info",
              style: GoogleFonts.manrope(
                textStyle: TextStyle(
                    fontSize: 12.0,
                    color: Color.fromRGBO(155, 155, 155, 1.0),
                    fontWeight: FontWeight.w400),
              )),
        ),
      ),
    );
  }
}
