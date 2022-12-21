import 'package:flutter/material.dart';

class ResetState extends StatelessWidget {
  final VoidCallback settingState;

  ResetState(this.settingState);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: settingState, child: const Text('Reset the body'));
  }
}
