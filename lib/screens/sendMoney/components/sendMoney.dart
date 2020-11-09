import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/constants.dart';

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
              style:
                  GoogleFonts.manrope(textStyle: TextStyle(color: kAllColor))),
          elevation: 0,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: kAllColor,
              ),
              onPressed: null,
              color: Color(0xFF243656)),
          backgroundColor: Colors.white,
        ),
        body: new ListView(physics: NeverScrollableScrollPhysics(), children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: new Container(
                height: MediaQuery.of(context).size.height -
                    (MediaQuery.of(context).size.height / 6.5),
                width: MediaQuery.of(context).size.width -
                    (MediaQuery.of(context).size.height / 10),
                decoration: BoxDecoration(
                  // color: Colors.tealAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                        // color: Colors.orange,
                        child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
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
                                      fontSize: 17, color: kAllColor)),
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
                              Text('To:',
                                  style: GoogleFonts.manrope(
                                    textStyle: TextStyle(
                                      fontSize: 12.0,
                                      color: Color.fromRGBO(155, 155, 155, 1.0),
                                    ),
                                  )),
                              Text('Ann Nielsen',
                                  style: GoogleFonts.manrope(
                                    textStyle: TextStyle(
                                      fontSize: 16.0,
                                      color: kAllColor,
                                    ),
                                  )),
                              Text('nielsen.ann@gmail.com',
                                  style: GoogleFonts.manrope(
                                    textStyle: TextStyle(
                                      fontSize: 12.0,
                                      color: Color.fromRGBO(155, 155, 155, 1.0),
                                    ),
                                  )),
                            ],
                          )),
                        ),
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
                      child: Container(
                        child: MoneyInput(),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      height: MediaQuery.of(context).size.height / 2.1,
                      width: MediaQuery.of(context).size.height / 2.1,
                      child: GridView.builder(
                          itemCount: buttons.length,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 8.0,
                                  crossAxisSpacing: 30.0,
                                  childAspectRatio: 1.3,
                                  crossAxisCount: 3),
                          itemBuilder: (BuildContext context, int index) {
                            return NumButton(
                              buttonText: buttons[index],
                              color: Color(0x1AFFFFFF),
                              // color: Colors.white,
                              textColor: kAllColor,
                            );
                          }),
                    )),
                    RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFF0070BA),
                                Color(0xFF1546A0),
                              ],
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        padding: const EdgeInsets.fromLTRB(120, 20, 120, 20),
                        child: Text('Send',
                            style: GoogleFonts.manrope(
                                textStyle: TextStyle(fontSize: 16))),
                      ),
                    )
                  ],
                )),
          ),
        ]));
  }
}

class MoneyInput extends StatelessWidget {
  const MoneyInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
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
    ));
  }
}

class NumButton extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final icon;

  NumButton({this.color, this.textColor, this.buttonText, this.icon});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(35),
      child: Container(
        color: color,
        child: Center(
            child: Text(buttonText,
                style: GoogleFonts.manrope(
                  textStyle: TextStyle(
                    color: kAllColor,
                    fontSize: 24,
                  ),
                ))),
      ),
    );
  }
}
