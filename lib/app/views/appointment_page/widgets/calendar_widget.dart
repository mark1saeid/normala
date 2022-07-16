import 'package:appointment/helpers/constants/colors.dart';
import 'package:appointment/helpers/widgets/background_layer.dart';
import 'package:flutter/material.dart';

class CalendarWidget extends StatefulWidget {
  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime selectedDate = DateTime.now(); // TO tracking date

  int currentDateSelectedIndex = 0; //For Horizontal Date
  ScrollController scrollController = ScrollController();
  //To Track Scroll of ListView

  int jan = 31;
  int feb = 29;
  int mar = 31;
  int apr = 30;
  int may = 31;
  int jun = 30;
  int jul = 31;
  int aug = 31;
  int sep = 30;
  int oct = 31;
  int nov = 30;
  int dec = 31;

  List<String> listOfMonths = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];

  List<String> listOfDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const SizedBox(height: 10),
        //To show CalendarWidget Widget
// todo  =========== ListVIew Days  ==========
        SizedBox(
            //  color: Colors.amber,
            height: height * .15,
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 10);
              },
              itemCount: 365,
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      currentDateSelectedIndex = index;
                      selectedDate = DateTime.now().add(Duration(days: index));
                    });
                  },

                  // todo  ====== TOTl ==========
                  child: Container(
                    height: height * .06,
                    width: height * .082,
                    // alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        //  shape: BoxShape.circle,
                        color: currentDateSelectedIndex == index
                            ? secondaryBackground
                            : backgroundColor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        // todo  ====== Number ==========

                        Container(
                          height: 40,
                          width: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              //  borderRadius: BorderRadius.circular(10),
                              shape: BoxShape.circle,
                              color: currentDateSelectedIndex == index
                                  ? mainColor
                                  : secondaryBackground),
                          child: Text(
                            DateTime.now()
                                .add(Duration(days: index))
                                .day
                                .toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w700,
                                color: currentDateSelectedIndex == index
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: height * .015,
                        ),

                        // todo  ====== Days =====

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            //  shape: BoxShape.circle,
                            /*  color: currentDateSelectedIndex == index
                                    ? Colors.black
                                    : backgroundColor*/
                          ),
                          child: Text(
                            listOfDays[DateTime.now()
                                        .add(Duration(days: index))
                                        .weekday -
                                    1]
                                .toString(),
                            style: TextStyle(
                                fontSize: 16,
                                color: currentDateSelectedIndex == index
                                    ? Colors.black
                                    : Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )),
      ],
    );
  }
}
