import 'package:appointment/app/views/doctor_details_page/doctor_details.dart';
import 'package:appointment/dummy.dart';
import 'package:appointment/helpers/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TopWidget extends StatelessWidget {
  final List<dynamic> list;
  const TopWidget({this.list, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (ctx, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                width: width * 0.78,
                child: GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const DoctorDetails())),
                    child: Material(
                      elevation: 0,
                      color: textCard,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: height * .13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: height * .01,
                            ),
                            Image.network(list[index].image,
                                width: MediaQuery.of(context).size.width * 0.1,
                                height: MediaQuery.of(context).size.height),
                            SizedBox(
                              width: height * .03,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // todo ======= Docotr name ========
                                Text(
                                  list[index].name,
                                  style: const TextStyle(
                                      color: thirdColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: height * .007,
                                ),
                                // todo ======= specialty  ========
                                Text(
                                  list[index].shortDesc,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: false,
                                  style: const TextStyle(
                                      color: secondaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),

                                SizedBox(
                                  height: height * .01,
                                ),

                                // todo ======= rateing ========
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    RatingBar.builder(
                                      itemSize: 12,
                                      ignoreGestures: true,
                                      initialRating: list[index].rating,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemBuilder: (context, _) => const Icon(
                                        AntDesign.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (_) {},
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      list[index].rating.toString(),
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            ));
  }
}
