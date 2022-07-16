import 'package:appointment/app/views/home_page/widgets/app_bar.dart';
import 'package:appointment/app/views/home_page/widgets/appointment_card.dart';
import 'package:appointment/app/views/home_page/widgets/categories.dart';
import 'package:appointment/app/views/home_page/widgets/srearch_doctor.dart';
import 'package:appointment/app/views/home_page/widgets/top_widget.dart';
import 'package:appointment/helpers/constants/colors.dart';
import 'package:appointment/helpers/widgets/background_layer.dart';
import 'package:appointment/helpers/widgets/label.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../../dummy.dart';


class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BackgroundLayer(
      child: Column(
        children: [
          SizedBox(height: height * .1, child:const AppBarWidget(),),
          SizedBox(height: height * .07, child: SearchDoctor()),
          SizedBox(
            height: height * .025,
          ),
          SizedBox(height: height * .12, child: const Categories()),
          SizedBox(
            height: height * .01,
          ),
           Label(title: "home.upcoming".tr(),action:(){}),
          SizedBox(
            height: height * .025,
          ),
          SizedBox(height: height * .22, child: const AppointmentCard()),
          SizedBox(
            height: height * .03,
          ),
           Label(title: "home.top_doctors".tr(),action:(){}),
          SizedBox(
            height: height * .02,
          ),
          SizedBox(child:  TopWidget(list: doctors,), height: height * 0.15),
          SizedBox(
            height: height * .01,
          ),
           Label(title:"home.top_nurses".tr() ,action:(){}),
          SizedBox(
            height: height * .02,
          ),
          SizedBox(child:  TopWidget(list: nurses,), height: height * 0.15),
          SizedBox(
            height: height * .01,
          ),
           Label(title: "home.top_medical_centers".tr(),action:(){}),
          SizedBox(
            height: height * .02,
          ),
          SizedBox(child:  TopWidget(list: nurses,), height: height * 0.15),
        ],
      ),
    );
  }
}
