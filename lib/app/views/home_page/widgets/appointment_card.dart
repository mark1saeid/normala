import 'package:appointment/helpers/constants/colors.dart';
import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  final String drName, specialty, data, time;
  const AppointmentCard(
      {Key key,
      this.drName = "Dr.Muhammed Syahid",
      this.specialty = "Dental Specialist",
      this.data = "Monday ,july 29",
      this.time = "11:30- 12:00 AM"})
      : super(key: key);
// "Dr.Muhammed Syahid"     "Dantal Spacials", data
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Material(
        // elevation: 10,
        color: mainColor,
        borderRadius: BorderRadius.circular(25),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  flex: 1,
                  child: ListTile(
                    leading: Material(
                      elevation: 10,
                      color: mainColor,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: MediaQuery.of(context).size.height * 0.06,
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://www.pngall.com/wp-content/uploads/2018/05/Doctor-Free-PNG-Image.png')),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            color: Colors.white),
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 2, left: 7),
                      child: Text(
                        drName,
                        style: const TextStyle(
                          color: textCard,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 2, left: 7),
                      child: Text(
                        specialty,
                        style: const TextStyle(
                          color: Colors.white38,
                        ),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black12),
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const SizedBox(width: 15),
                        const Icon(
                          Icons.access_time,
                          color: textCard,
                        ),
                        const SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            data,
                            style: const TextStyle(
                              color: textCard,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Flexible(
                          child: Text(
                            time,
                            style: const TextStyle(
                              color: textCard,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
