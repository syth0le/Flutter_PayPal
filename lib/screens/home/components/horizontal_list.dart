import 'package:flutter/material.dart';
import 'package:paypal/screens/home/components/homeCards.dart';

class HorizList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 140,
      child: new ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
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
