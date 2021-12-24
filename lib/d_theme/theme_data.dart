import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/d_widgets/d_colors.dart';
import 'package:myapp/screens/buttons.dart';

class DTheme {
  static const _appbarBottomBorderColor = 0xff424242;

  /* static ThemeData get darkTheme {
    // * not extending dart theme data because textTheme needs to be changed
    return ThemeData(
      // *Remove material effects
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,

      // *Change fonts
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
  } */

  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
        textTheme: GoogleFonts.openSansTextTheme(
          ThemeData.dark().textTheme,
        ),
        colorScheme: ThemeData.dark()
            .colorScheme
            .copyWith(background: Colors.black, primary: DColors.primaryColor),
        buttonTheme: ThemeData.dark().buttonTheme.copyWith(
              buttonColor: DColors.primaryColor,
              colorScheme: ThemeData.dark().buttonTheme.colorScheme?.copyWith(
                    background: DColors.primaryColor,
                  ),
            ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                // return DColors.secondaryColor;
                return Colors.transparent;
              } else if (states.contains(MaterialState.disabled)) {
                return DColors.disabledButtonColor;
              }
              return DColors.primaryColor;
            }),
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.disabled)) {
                return DColors.disabledTextColor;
              }
              return DColors.foregroundColor;
            }),
            overlayColor: MaterialStateProperty.all(DColors.secondaryColor),
          ),
        ));
  }
}
