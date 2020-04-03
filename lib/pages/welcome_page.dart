import 'package:financial_app/pages/create_account_page.dart';
import 'package:financial_app/shared_widgets/custom_button_outline_widget.dart';
import 'package:financial_app/shared_widgets/custom_button_widget.dart';
import 'package:financial_app/utils/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class WelcomePage extends StatelessWidget {
  final util = Util();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            Text(
              'Welcome',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 25),
            Text(
              'Manage your expenses',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 8),
            Text(
              'seamless & intuitively',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 12),
            CustomButtomWidget(
              textColor: util.mainColor,
              isHasIcon: true,
              backgroundColor: Colors.white,
              text: 'Sign in with Google',
              onTap: () {},
              icon: AntDesign.google,
            ),
            SizedBox(height: 15),
            CustomButtonOutlineWidget(
              util: util,
              color: util.mainColor,
              borderColor: Colors.white,
              text: 'Create an account',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateAccountPage()));
              },
            ),
            SizedBox(height: 35),
            Center(
              child: RichText(
                text: TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(color: Colors.white54),
                    children: [
                      TextSpan(
                          text: 'Sign in',
                          style: TextStyle(color: Colors.white))
                    ]),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
