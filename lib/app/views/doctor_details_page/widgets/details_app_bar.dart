import 'package:appointment/helpers/constants/colors.dart';
import 'package:appointment/helpers/widgets/icon_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
         IconBackground(
          child:Icon(Icons.arrow_back_ios,color: secondaryColor,) ,

        ),
         IconBackground(
          child: Icon(MaterialCommunityIcons.email_outline,color: secondaryColor,) ,
        )
      ],
    );

}
}
