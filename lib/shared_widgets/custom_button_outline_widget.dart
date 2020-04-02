import 'package:financial_app/utils/util.dart';
import 'package:flutter/material.dart';

class CustomButtonOutlineWidget extends StatelessWidget {
  const CustomButtonOutlineWidget({
    Key key,
    @required this.util,
    @required this.text,
    @required this.color,
    @required this.borderColor,
    @required this.onTap,
  }) : super(key: key);

  final Util util;
  final String text;
  final Color color;
  final Color borderColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: onTap,
      padding: const EdgeInsets.all(12),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
      borderSide: BorderSide(color: borderColor),
    );
  }
}
