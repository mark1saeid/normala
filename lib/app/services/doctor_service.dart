import 'dart:developer';

import 'package:appointment/app/models/doctor.dart';
import 'package:appointment/helpers/constants/strings.dart';
import 'package:dio/dio.dart';

getDoctors() async {
  try {
    Response response = await Dio().get('$baseApi/doctors.json');
    if (response.statusCode == 200) {
      List<Doctor> doctors = [];
      response.data.forEach((x) {
        doctors.add(Doctor.fromJson(x));
      });
      return doctors;
    } else {
      return [];
    }
  } catch (e) {
    log(e);
  }
}

getDoctorDetails(String id) async {
  try {
    List<Doctor> doctors = await getDoctors();
    Doctor doctor = doctors.firstWhere((doctor) => doctor.id == id);
    return doctor;
  } catch (e) {
    log(e);
  }
}
