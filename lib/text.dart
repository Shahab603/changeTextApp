import 'package:flutter/material.dart';

class TextDecoration extends StatelessWidget {
  final String bodyText;

  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  TextDecoration(this.bodyText);

  @override
  Widget build(BuildContext context) {
    return Text(bodyText, style: const TextStyle(
      fontSize: 30,
      color: Colors.blue,
    ),);
  }
}
