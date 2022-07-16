import 'package:appointment/helpers/constants/colors.dart';
import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String text;
  const SubTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: secondaryColor, fontWeight: FontWeight.w500, fontSize: 12),
    );
  }
}
