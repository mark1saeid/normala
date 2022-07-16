import 'package:appointment/app/views/doctor_details_page/widgets//details_app_bar.dart';
import 'package:appointment/app/views/doctor_details_page/widgets//details_card.dart';
import 'package:appointment/app/views/doctor_details_page/widgets//doctor_info.dart';
import 'package:appointment/helpers/constants/colors.dart';
import 'package:appointment/helpers/constants/const.dart';
import 'package:appointment/helpers/widgets/background_layer.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({Key key}) : super(key: key);
 // static const String id = 'DoctorDetails';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return BackgroundLayer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: height * .1, child: const DetailsAppBar()),
          SizedBox(
            height: height * .02,
          ),
          SizedBox(height: height * .21, child: const DoctorInfo()),
          SizedBox(
            height: height * .04,
          ),
          Material(
            elevation: elevation,
            color: textCard,
            borderRadius: BorderRadius.circular(17),
            child:const DetailsCard(),
          ),
          SizedBox(
            height: height * .03,
          ),
        ],
      ),
    );
  }
}
