import 'package:financial_app/utils/util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        fontFamily: GoogleFonts.lato().fontFamily,
        scaffoldBackgroundColor: util.mainColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white
          ),
          bodyText2: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.white
          ),
            subtitle1: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
            subtitle2: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white
          )
        )
      ),
      home: WelcomePage(),
    );
  }
}
