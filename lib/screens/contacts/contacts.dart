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
              style: GoogleFonts.manrope(
                  textStyle: TextStyle(
                      color: kAllColor, fontWeight: FontWeight.w600))),
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
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            // color: Colors.red,
            // height: MediaQuery.of(context).size.height -
            //     (MediaQuery.of(context).size.height / 6.5),
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
                  child: ListView(
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
                  ),
                )
              ],
            ),
          ),
        ),
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
              title: Text(
                'Home',
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.w400, color: kAllColor),
              ),
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

class ContactContainer extends StatelessWidget {
  const ContactContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 6), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 48,
                  decoration: new BoxDecoration(
                    color: Color(0xFFF5F7FA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: new Center(
                    child: new Text(
                      "A",
                      style: GoogleFonts.manrope(
                          textStyle: TextStyle(
                              fontSize: 17,
                              color: kAllColor,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    // decoration: new BoxDecoration(color: Colors.blue),
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ann Nielsen',
                        style: GoogleFonts.manrope(
                          textStyle: TextStyle(
                              fontSize: 16.0,
                              color: kAllColor,
                              fontWeight: FontWeight.w400),
                        )),
                    Text('nielsen.ann@gmail.com',
                        style: GoogleFonts.manrope(
                          textStyle: TextStyle(
                              fontSize: 12.0,
                              color: Color.fromRGBO(155, 155, 155, 1.0),
                              fontWeight: FontWeight.w400),
                        )),
                  ],
                )),
              ),
            ],
          )),
    );
  }
}

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
            hintText: 'Enter a name or e-mail'));
  }
}
