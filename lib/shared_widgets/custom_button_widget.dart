import 'package:financial_app/utils/util.dart';
import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.all(12.0),
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        onPressed: onTap,
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
        ));
  }
}
