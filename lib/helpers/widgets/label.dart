import 'package:appointment/helpers/constants/colors.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class Label extends StatelessWidget {
 final String title;
 final VoidCallback action;
 final double size;
  const Label({this.title,this.action,this.size, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:  TextStyle(
            fontSize: size,
            color: thirdColor,
            fontWeight: FontWeight.w700,
          ),
        ),
    action!=null? GestureDetector(
      onTap: action,
      child:  Text("home.see_more".tr(),style: const  TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: mainColor,
      ) ),
    ):const SizedBox()
      ],
    );
  }
}
