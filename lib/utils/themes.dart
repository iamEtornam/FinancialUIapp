import 'package:financial_app/utils/util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themes() {
  final util = Util();
  return ThemeData(
      fontFamily: GoogleFonts.roboto().fontFamily,
      scaffoldBackgroundColor: util.mainColor,
      appBarTheme: AppBarTheme(color: util.mainColor, elevation: 0),
      textTheme: TextTheme(
        bodyText1: TextStyle(
            letterSpacing: 2,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white),
        bodyText2: TextStyle(
            fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),
        subtitle1: TextStyle(
            letterSpacing: 2,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        subtitle2: TextStyle(
            letterSpacing: 2,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white),
        caption: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.grey),
      ));
}
