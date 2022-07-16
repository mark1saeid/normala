import 'dart:developer';

import 'package:appointment/app/models/patient.dart';
import 'package:appointment/helpers/constants/strings.dart';
import 'package:dio/dio.dart';

login() {}
register(Patient patient) async {
  try {
    Response response =
        await Dio().post('$baseApi/patients.json', data: patient.toJson());
    if (response.statusCode == 200) {
      await Dio().patch(
          '$baseApi/patients/${response.data["name"].toString()}.json',
          data: {"id": response.data["name"].toString()});
    }
  } catch (e) {
    log(e);
  }
}

getPatientDetails() async {
  try {
    Response response = await Dio().get('$baseApi/patients.json');

    List<Patient> patients = [];
    response.data.forEach((x) {
      patients.add(Patient.fromJson(x));
    });

    return patients.firstWhere((patient) => patient.id == "0");
  } catch (e) {
    log(e);
  }
}
