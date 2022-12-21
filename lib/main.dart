// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'package:practice_udemy/reset.dart';
import './text.dart';
import './textControl.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  String bodyText = 'this is the body Text';

  void changeText() {
    setState(() {
      bodyText = "the text is changed";
    });

    print(bodyText); //for Debugging
  }

  void resetButtonState() {
    setState(() {
      bodyText = "Reset!";
    });
    print('Reseted'); //for Debugging
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextDecoration(bodyText),
                const SizedBox(height: 15),
                TextControl(changeText),
                const SizedBox(height: 15),
                ResetState(resetButtonState),
              ],
            ),
          ),
          appBar: AppBar(
            title: const Text('AppBaar'),
          )),
    );
  }
}
