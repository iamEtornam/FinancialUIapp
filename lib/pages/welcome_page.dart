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
            SizedBox(height: 25),
            CustomButtomWidget(
              util: util,
              color: util.mainColor,
              isHasIcon: true,
              text: 'Sign in with Google',
              onTap: () {},
              icon: AntDesign.google,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButtomWidget extends StatelessWidget {
  const CustomButtomWidget({
    Key key,
    @required this.util,
    @required this.text,
    @required this.isHasIcon,
    this.icon,
    @required this.color,
    @required this.onTap,
  }) : super(key: key);

  final Util util;
  final String text;
  final bool isHasIcon;
  final IconData icon;

  ///added color and ontap function and reference them in button code
  final Color color;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              isHasIcon ? Icon(icon, color: color) : SizedBox(),
              SizedBox(
                width: MediaQuery.of(context).size.width / 7,
              ),
              Text(text,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: util.mainColor))
            ],
          ),
        ));
  }
}
