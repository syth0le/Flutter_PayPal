import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:paypal/screens/autorization/components/clickable_text.dart';
import 'package:paypal/screens/autorization/components/input_form.dart';
import 'package:paypal/screens/autorization/components/logIn_button.dart';

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
