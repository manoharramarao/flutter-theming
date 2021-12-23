import 'package:flutter/material.dart';

class DTheme {
  static const _blackPrimaryValue = 0xFF000000;

  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        buttonTheme: ThemeData.dark().buttonTheme.copyWith(
            colorScheme: ColorScheme.dark()
                .copyWith(background: Colors.green, primary: Colors.green)),
        appBarTheme: ThemeData.dark()
            .appBarTheme
            .copyWith(centerTitle: true, backgroundColor: Colors.black));
  }
}
