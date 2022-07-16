import 'package:appointment/helpers/constants/colors.dart';
import 'package:flutter/material.dart';

class MakeAppointmentButtom extends StatelessWidget {
  const MakeAppointmentButtom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Material(
      elevation: 1,
      borderRadius:BorderRadius.circular(17) ,
      child: Container(
        height: height*0.08,
        decoration:BoxDecoration(borderRadius:BorderRadius.circular(17),color: mainColor),
        child: const Center(
          child:  Text(
            "Make Appointment",
            style: TextStyle(
              color: textCard,
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
