import 'package:appointment/helpers/constants/colors.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SearchDoctor extends StatelessWidget {
  SearchDoctor({Key key}) : super(key: key);
 final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(

      style: const TextStyle(
        fontSize: 12.0,
        //    color: Colors.blueAccent,
      ),
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.left,
      maxLines: 1,
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: const Icon(
            Feather.search,
            color: mainColor,
            size: 22,
          ),
          hintText: "home.search".tr(),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 32.0),
              borderRadius: BorderRadius.circular(18.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 32.0),
              borderRadius: BorderRadius.circular(18.0))),
    );
  }
}
