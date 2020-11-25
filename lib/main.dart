import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/navigator.dart';
import 'package:paypal/screens/activity/activity.dart';
import 'package:paypal/screens/activity/try.dart';
import 'package:paypal/screens/autorization/autorization.dart';
import 'package:paypal/screens/contacts/contacts.dart';
import 'package:paypal/screens/sendMoney/sendMoney.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PayPal',
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.manropeTextTheme(
            Theme.of(context).textTheme,
          )),
      debugShowCheckedModeBanner: false,
      // home: SendMoneyScreen(),
      home: AutorizationScreen(),
      // home: ContactsScreen(),
      // home: ActivityScreen(),
      // home: SegmentedControl(),
      // home: BottomBar(),
    );
  }
}
