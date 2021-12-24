import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DTheme {
  static const _appbarBottomBorderColor = 0xff424242;

  static ThemeData get darkTheme {
    // * not extending dart theme data because textTheme needs to be changed
    return ThemeData(
      textTheme: GoogleFonts.openSansTextTheme(
        ThemeData.dark().textTheme,
      ),
      // !Overriding icon theme is not working
      iconTheme: const IconThemeData(
        color: Colors.green,
      ),
      scaffoldBackgroundColor: Colors.black,
      buttonTheme: ThemeData.dark().buttonTheme.copyWith(
            colorScheme: const ColorScheme.dark()
                .copyWith(background: Colors.green, primary: Colors.green),
          ),
      appBarTheme: ThemeData.dark().appBarTheme.copyWith(
            centerTitle: true,
            backgroundColor: Colors.black,
            shape: const Border(
              bottom: BorderSide(
                color: Color(_appbarBottomBorderColor),
              ),
            ),
          ),
    );
  }
}
