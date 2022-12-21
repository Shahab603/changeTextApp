import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback controler;
  
  TextControl(this.controler);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: controler,
        child: const Text('Change the Text'));
  }
}
