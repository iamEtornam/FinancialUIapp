import 'package:financial_app/utils/themes.dart';
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
      theme: themes(),
      home: WelcomePage(),
    );
  }
}
