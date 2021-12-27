import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/d_theme/d_widgets/d_colors.dart';

class DTheme {
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
