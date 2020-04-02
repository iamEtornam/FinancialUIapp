import 'package:financial_app/utils/util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/create_account_page.dart';
import 'pages/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final util = Util();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
          fontFamily: GoogleFonts.roboto().fontFamily,
          scaffoldBackgroundColor: util.mainColor,
          appBarTheme: AppBarTheme(
            color: util.mainColor,
            elevation: 0
          ),
          textTheme: TextTheme(
              bodyText1: TextStyle(
                letterSpacing: 2,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
              bodyText2: TextStyle(
                 letterSpacing: 1,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
              subtitle1: TextStyle(
                  letterSpacing: 2,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              subtitle2: TextStyle(
                 letterSpacing: 2,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white))),
      home: CreateAccountPage(),
    );
  }
}
