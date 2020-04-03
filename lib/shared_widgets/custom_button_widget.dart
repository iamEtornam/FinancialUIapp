import 'package:financial_app/utils/util.dart';
import 'package:flutter/material.dart';

class CustomButtomWidget extends StatelessWidget {
  const CustomButtomWidget({
    Key key,
    @required this.text,
    @required this.isHasIcon,
    this.icon,
    @required this.onTap,
    @required this.textColor,
    @required this.backgroundColor,
  }) : super(key: key);

  final Color textColor;
  final String text;
  final bool isHasIcon;
  final IconData icon;
  final Color backgroundColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        padding: const EdgeInsets.all(12.0),
        color: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        onPressed: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            isHasIcon ? Icon(icon, color: textColor) : SizedBox(),
            Center(
              child: Text(text,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: textColor)),
            ),
            SizedBox()
          ],
        ));
  }
}
