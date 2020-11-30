import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/constants.dart';
import 'package:paypal/screens/autorization/autorization.dart';
import 'package:paypal/screens/contacts/components/contact.dart';
import 'package:paypal/screens/contacts/components/search_contact.dart';

import '../../components.dart';

class ContactsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: new Text(
          "Contacts",
          style: GoogleFonts.manrope(
            textStyle: TextStyle(
              color: kAllColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: kAllColor,
          ),
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AutorizationScreen(),
              ),
            )
          },
          color: kAllColor,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            color: kAllColor,
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: double.infinity,
          width: MediaQuery.of(context).size.width -
              (MediaQuery.of(context).size.height / 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 20),
                child: ContactsInput(),
              ),
              Expanded(
                child: ScrollConfiguration(
                  behavior: MyCustomScroll(),
                  child: ContactsList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContactsList extends StatelessWidget {
  const ContactsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        ContactContainer(),
        ContactContainer(),
        ContactContainer(),
        ContactContainer(),
        ContactContainer(),
        ContactContainer(),
        ContactContainer(),
        ContactContainer(),
        ContactContainer(),
        ContactContainer(),
        ContactContainer(),
        ContactContainer(),
        ContactContainer(),
        ContactContainer(),
        ContactContainer(),
        ContactContainer(),
      ],
    );
  }
}
