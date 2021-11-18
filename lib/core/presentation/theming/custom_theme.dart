import 'package:firebase_auth_with_riverpod_tutorial/core/presentation/theming/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData get appTheme {
    return ThemeData(
      primaryColor: CustomColors.mediumOrange,
      scaffoldBackgroundColor: CustomColors.darkBlue,
      textTheme: TextTheme(
        headline5: const TextStyle(color: Colors.white),
        bodyText2: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: Colors.white,
          ),
        ),
        button: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: CustomColors.mediumOrange,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: CustomColors.mediumYellow,
        ),
      ),
    );
  }
}
