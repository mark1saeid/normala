import 'package:appointment/helpers/constants/colors.dart';
import 'package:appointment/helpers/constants/const.dart';
import 'package:appointment/helpers/widgets/label.dart';
import 'package:appointment/helpers/widgets/subtitle.dart';
import 'package:flutter/material.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.topCenter,
            child: Material(
              elevation: 1,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: height * .24,
                decoration: BoxDecoration(
                    color: imageBackground, borderRadius: BorderRadius.circular(20)),
                child: Image.network(
                  'https://mylocalstudy.com/wp-content/uploads/2020/01/doctor.png',
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width * .1,
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               const Label(
                size:20,
                title: "Dr.hanaka",
              ),
              SizedBox(height: height * .01),
               const SubTitle(text: "Good doctor good luck"),
              SizedBox(height: height * .02),
              const RowWidget(
                icon: Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                title: "Rating",
                subtitle: "4.5 out of 5",
              ),
              SizedBox(height: height * .01),
              const RowWidget(
                icon: Icon(
                  Icons.people,
                  color: mainColor,
                ),
                title: "Patient",
                subtitle: "1000+",
              ),
            ],
          ),
        )
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  final Icon icon;
  final String title, subtitle;
  const RowWidget({Key key, this.icon, this.title, this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Material(
          elevation: elevation,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: height * .06,
            width: height * .06,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: textCard, borderRadius: BorderRadius.circular(15)),
            child: icon,
          ),
        ),
        SizedBox(
          width: height * .03,
        ),
        SizedBox(
          height: height * .05,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: SubTitle(
                text: title,
              )),
              Expanded(
                child: Label(
                  title: subtitle,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
