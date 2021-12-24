import 'dart:ui';

import 'package:flutter/material.dart';

class DButton extends StatelessWidget {
  final Function() onPressed;
  final String text;

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Color(0xFF26890D),
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );

  DButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
      // style: flatButtonStyle,
      style: ButtonStyle(
          splashFactory: NoSplash.splashFactory,
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.green[900];
            }
            return const Color(0xFF26890D);
          }),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          textStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 13.0),
          ),
          fixedSize: MaterialStateProperty.all(const Size.fromHeight(40))),
    );
  }
}
