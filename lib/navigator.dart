import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paypal/constants.dart';
import 'package:paypal/screens/activity/activity.dart';
import 'package:paypal/screens/autorization/autorization.dart';
import 'package:paypal/screens/contacts/contacts.dart';
import 'package:paypal/screens/sendMoney/sendMoney.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBar createState() => _BottomBar();
}

class _BottomBar extends State<BottomBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    ActivityScreen(),
    ContactsScreen(),
    SendMoneyScreen(),
    AutorizationScreen(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: new BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
            // _navigateToScreens(index);
          },
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              title: Text(''),
              icon: _currentIndex == 0
                  ? new SvgPicture.asset(
                      'assets/icons/home_bottom_bar_Active.svg')
                  : new SvgPicture.asset('assets/icons/home_bottom_bar.svg'),
            ),
            BottomNavigationBarItem(
              title: Text(''),
              icon: _currentIndex == 1
                  ? new SvgPicture.asset(
                      'assets/icons/users_bottom_bar_Active.svg')
                  : new SvgPicture.asset('assets/icons/users_bottom_bar.svg'),
            ),
            BottomNavigationBarItem(
              title: Text(''),
              icon: _currentIndex == 2
                  ? new SvgPicture.asset(
                      'assets/icons/wallet_bottom_bar_Active.svg')
                  : new SvgPicture.asset('assets/icons/wallet_bottom_bar.svg'),
            ),
            BottomNavigationBarItem(
              title: Text(''),
              icon: _currentIndex == 3
                  ? new SvgPicture.asset(
                      'assets/icons/setting_bottom_bar_Active.svg')
                  : new SvgPicture.asset('assets/icons/setting_bottom_bar.svg'),
            ),
          ],
          selectedItemColor: kTextColor,
          unselectedItemColor: kAllColor,
          // onTap: _onItemTapped,
        )));
  }
}
