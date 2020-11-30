import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/constants.dart';
import 'package:paypal/screens/sendMoney/components/money_input.dart';
import 'package:paypal/screens/sendMoney/components/num_buttons.dart';
import 'package:paypal/screens/sendMoney/components/send_button.dart';
import 'package:paypal/screens/sendMoney/components/send_to_user_info.dart';

class SendMoneyScreen extends StatelessWidget {
  final List buttons = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "0",
    ".",
    "⌫",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: new Text("Send Money",
            style: GoogleFonts.manrope(textStyle: TextStyle(color: kAllColor))),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: kAllColor,
          ),
          onPressed: () => Navigator.of(context).pop(),
          color: Color(0xFF243656),
        ),
        backgroundColor: Colors.white,
      ),
      body: new ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: new Container(
              height: MediaQuery.of(context).size.height -
                  (MediaQuery.of(context).size.height / 6.5),
              width: MediaQuery.of(context).size.width -
                  (MediaQuery.of(context).size.height / 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SendToUser(),
                  MoneyInput(),
                  NumKeyboard(buttons: buttons),
                  SendButton()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
