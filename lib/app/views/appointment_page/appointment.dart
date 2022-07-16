import 'package:appointment/app/views/appointment_page/widgets/appointment_card.dart';
import 'package:appointment/app/views/appointment_page/widgets/calendar_widget.dart';
import 'package:appointment/helpers/widgets/background_layer.dart';
import 'package:flutter/material.dart';

class AppointmentWidget extends StatelessWidget {
  const AppointmentWidget({Key key}) : super(key: key);
  static String id = "AppointmentWidget";

  @override
  Widget build(BuildContext context) {
    return BackgroundLayer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CalendarWidget(),
          const SizedBox(
            height: 10,
          ),
          const AppointmentCard(),
        ],
      ),
    );
  }
}
