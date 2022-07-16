import 'dart:developer';

import 'package:appointment/app/models/nurse.dart';
import 'package:appointment/helpers/constants/strings.dart';
import 'package:dio/dio.dart';

getNurses() async {
  try {
    Response response = await Dio().get('$baseApi/nurses.json');
    if (response.statusCode == 200) {
      List<Nurse> nurses = [];
      response.data.forEach((x) {
        nurses.add(Nurse.fromJson(x));
      });
      return nurses;
    } else {
      return [];
    }
  } catch (e) {
    log(e);
  }
}

getNurseDetails(String id) async {
  try {
    List<Nurse> nurses = await getNurses();
    Nurse nurse = nurses.firstWhere((nurse) => nurse.id == id);
    return nurse;
  } catch (e) {
    log(e);
  }
}
