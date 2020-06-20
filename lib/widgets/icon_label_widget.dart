import 'package:flutter/material.dart';
import 'package:task/constant.dart';

class IconRowWidget extends StatelessWidget {
  final String textLabel;
  final IconData iconLabel;

  IconRowWidget({this.iconLabel, this.textLabel});

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: <Widget>[
        Icon(
          iconLabel,
          color: Theme.of(context).primaryColor,
          size: 20.0,
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          textLabel,
          style: kTextStyle,
        ),
      ],
    );
  }
}
