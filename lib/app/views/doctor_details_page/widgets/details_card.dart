
import 'package:appointment/helpers/constants/colors.dart';
import 'package:appointment/helpers/widgets/label.dart';
import 'package:flutter/material.dart';
import './map.dart';

import 'package:readmore/readmore.dart';

class DetailsCard extends StatefulWidget {
  const DetailsCard({Key key}) : super(key: key);

  @override
  State<DetailsCard> createState() => _DetailsCardState();
}

class _DetailsCardState extends State<DetailsCard> {
  String readMoreModel =
      "Lorem ipsum dolor sit amet,consectetur adipiscing elit,Proin imperdiet tellus nunc,nec tempor massa maximus pretium. Aenean placerat, elit eu feugiat egestas, massa ligula dictum libero, in malesuada elit mi vel felis. Vivamus ut ipsum sit amet enim varius tincidunt sed nec leo. Mauris nulla ex, dictum sit amet porta ut, feugiat sit amet turpis. Nullam rhoncus lacus at erat blandit ultricies. Maecenas id quam ex. Nulla feugiat imperdiet augue in sodales. Donec dignissim tempus rhoncus. Ut eget lorem vitae odio suscipit feugiat at vel felis.";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: height * .03, vertical: height * .05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Label(
            title: "Biography",
          ),
          SizedBox(
            height: height * .02,
          ),
          // ! Need T3deel Here
          SizedBox(
            height: height * .1,
            child: ListView.builder(
              itemCount: 1,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return ReadMoreText(
                  readMoreModel,
                  trimLines: 3,
                  trimLength: 50,
                  colorClickableText: secondaryColor,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Read more',
                  trimExpandedText: 'Show less',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: secondaryColor,
                  ),
                  lessStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: mainColor,
                  ),
                  delimiterStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: secondaryColor,
                  ),
                  moreStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: mainColor,
                  ),
                );
              },
            ),
          ),
          const Label(
            title: "Location",
          ),
          SizedBox(
            height: height * .03,
          ),
          const GoogleMapWidget(),
        ],
      ),
    );
  }
}
