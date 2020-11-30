import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paypal/constants.dart';

class ContactsInput extends StatelessWidget {
  const ContactsInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 12, color: kPrimaryColor),
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
          child: SizedBox(
            width: 25,
            height: 25,
            child: SvgPicture.asset(
              'assets/icons/find_contacts.svg',
              color: kPrimaryColor,
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: kAllColor,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF0070BA),
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Enter a name or e-mail',
      ),
    );
  }
}
