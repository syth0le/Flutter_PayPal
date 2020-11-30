import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
