import 'package:flutter/material.dart';

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
