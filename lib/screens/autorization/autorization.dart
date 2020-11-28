import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/navigator.dart';

import '../../components.dart';

class AutorizationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Color(0xFF0070BA),
      ),
    );
    return Scaffold(
      body: Center(
        child: new Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width -
              (MediaQuery.of(context).size.height / 11),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ScrollConfiguration(
            behavior: MyCustomScroll(),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 75, 0, 75),
                  child: Image.asset('assets/images/paypal.png'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: AutorizationInput('Enter your name or e-mail'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: AutorizationInput('Password'),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: LogInButton(),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                  child: ClickableText("Having trouble logging in?"),
                ),
                ClickableText("Sign up"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ClickableText extends StatelessWidget {
  final text;

  ClickableText(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RichText(
          text: TextSpan(
            text: text,
            style: TextStyle(color: Colors.grey),
            recognizer: TapGestureRecognizer()
              ..onTap = () => debugPrint('click'),
          ),
        ),
      ),
    );
  }
}

class LogInButton extends StatelessWidget {
  const LogInButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BottomBar()),
        );
      },
      textColor: Colors.white,
      padding: const EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Container(
        width: MediaQuery.of(context).size.width -
            (MediaQuery.of(context).size.height / 10),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF0070BA),
                Color(0xFF1546A0),
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        padding: const EdgeInsets.fromLTRB(120, 20, 120, 20),
        child: Text(
          'Log In',
          style: GoogleFonts.manrope(
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class AutorizationInput extends StatelessWidget {
  final text;

  AutorizationInput(this.text);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      textAlign: TextAlign.center,
      // autofocus: true,
      initialValue: '',
      decoration: InputDecoration(
        // labelText: text,
        hintText: text,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFedeef0),
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFedeef0),
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
    );
  }
}
