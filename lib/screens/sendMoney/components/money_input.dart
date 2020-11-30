import 'package:flutter/material.dart';
import 'package:paypal/constants.dart';

class MoneyInput extends StatelessWidget {
  const MoneyInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
      child: Container(
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.attach_money,
              color: kAllColor,
              size: 37,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: kAllColor,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: kAllColor,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF0070BA),
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ),
    );
  }
}
