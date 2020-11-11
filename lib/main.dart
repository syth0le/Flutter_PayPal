import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/screens/activity/activity.dart';
import 'package:paypal/screens/activity/try.dart';
import 'package:paypal/screens/autorization/autorization.dart';
import 'package:paypal/screens/contacts/contacts.dart';
import 'package:paypal/screens/sendMoney/components/sendMoney.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.manropeTextTheme(
            Theme.of(context).textTheme,
          )
          // primaryTextTheme:
          //     textTheme: TextTheme(
          //   bodyText1: TextStyle(),
          //   bodyText2: TextStyle(),
          // ).apply(
          //   bodyColor: Colors.orange,
          //   displayColor: Colors.blue,
          // ),
          ),
      debugShowCheckedModeBanner: false,
      // home: SendMoneyScreen(),
      // home: AutorizationScreen(),
      // home: ContactsScreen(),
      // home: ActivityScreen(),
      home: SegmentedControl(),
    );
  }
}
