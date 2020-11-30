import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/screens/wallet/components/cards_info.dart';
import 'package:paypal/screens/wallet/components/personal_info.dart';

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
          child: Text(
            "Personal info",
            style: GoogleFonts.manrope(
              textStyle: TextStyle(
                fontSize: 12.0,
                color: Color.fromRGBO(155, 155, 155, 1.0),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AllBioInfo extends StatelessWidget {
  const AllBioInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          const SizedBox(height: 80),
          UserInfo(),
          InfoContainer(
            nameInfo: "Name ",
            valueInfo: "Vadim Demenko",
          ),
          InfoContainer(
            nameInfo: "E-mail",
            valueInfo: "vadikforz@gmail.com",
          ),
          InfoContainer(
            nameInfo: "Phone",
            valueInfo: "+4 1782 049 294",
          ),
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
              company: 'MIR', cardNum: '6*** **** ****4 1200', imgName: 'visa'),
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
        ],
      ),
    );
  }
}
