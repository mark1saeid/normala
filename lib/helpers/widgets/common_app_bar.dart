import 'package:appointment/helpers/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icon_background.dart';

class CommonAppBar extends StatefulWidget {
  const CommonAppBar({Key key}) : super(key: key);

  @override
  _CommonAppBarState createState() => _CommonAppBarState();
}

class _CommonAppBarState extends State<CommonAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        IconBackground(
          child:Icon(Icons.arrow_back_ios,color: secondaryColor,) ,

        )
      ],
    );
  }
}
