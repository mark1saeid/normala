import 'package:appointment/helpers/constants/colors.dart';
import 'package:appointment/helpers/widgets/label.dart';
import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({Key key}) : super(key: key);
  final String dataTime = "09:00";
  final String drName = "Dr.maelina Cooper";
  final String specialty = "Dentists";
  final String experience = "Medicine prescription";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Label(title: dataTime, size: 18.5),

        // todo ======= Card ========

        Container(
          height: height * .25,
          width: width * .67,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            // border: Border.fromBorderSide(BorderSide ()),
            borderRadius: BorderRadius.circular(17),
            //color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // todo ===== ListTile ============

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://pngimg.com/uploads/doctor/doctor_PNG15988.png"),
                  ),
                  SizedBox(
                    width: height * .03,
                  ),
                  SizedBox(
                    height: height * .065,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Label(title: drName, size: 15),
                        ),
                        SizedBox(
                          height: height * .01,
                        ),
                        Expanded(
                          child: Text(
                            specialty,
                            style: const TextStyle(
                              color: mainColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * .03,
              ),

              // todo experience text =======
              Text(
                experience,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: height * .03,
              ),

              const Text(
                "09:00-09:30",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: mainColor,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
