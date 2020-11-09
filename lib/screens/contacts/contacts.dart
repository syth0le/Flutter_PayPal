import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/constants.dart';

class ContactsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: new Text("Contacts",
              style:
                  GoogleFonts.manrope(textStyle: TextStyle(color: kAllColor))),
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
              icon: const Icon(Icons.add),
              color: kAllColor,
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: Container(),
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
              title: Text('Home'),
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

// bottomNavigationBar : new BottomNavigationBar(
//         currentIndex: index,
//         onTap: (int index) {
//           setState(() {
//             this.index = index;
//           }
//           );
//           _navigateToScreens(index);
//         },
//         type: BottomNavigationBarType.fixed,
//         items: [
//           new BottomNavigationBarItem(
//               backgroundColor: Colors.white,
//               icon: index==0?new Image.asset('images/1.0x/icon1.png'):new Image.asset('images/1.0x/newIcon.png'),
//               title: new Text("Route1", style: new TextStyle(
//                   color: const Color(0xFF06244e), fontSize: 14.0))),
//           new BottomNavigationBarItem(
//               icon: index==1?new Image.asset('images/1.0x/icon2.png'):new Image.asset('images/1.0x/newIcon.png'),
//               title: new Text("Route2", style: new TextStyle(
//                   color: const Color(0xFF06244e), fontSize: 14.0))),
//           new BottomNavigationBarItem(
//               icon: index==2?new Image.asset('images/1.0x/icon3.png'):new Image.asset('images/1.0x/newIcon.png'),
//               title: new Text("Route3", style: new TextStyle(
//                   color: const Color(0xFF06244e), fontSize: 14.0),)),
//           new BottomNavigationBarItem(
//               icon: index==3?new Image.asset('images/1.0x/icon4.png'):new Image.asset('images/1.0x/newIcon.png'),
//               title: new Text("Route4", style: new TextStyle(
//                   color: const Color(0xFF06244e), fontSize: 14.0),))
//         ])
