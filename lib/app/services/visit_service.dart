import 'dart:developer';
import 'package:appointment/app/models/patient.dart';
import 'package:appointment/app/models/visit.dart';
import 'package:appointment/app/services/patient_service.dart';
import 'package:appointment/helpers/constants/strings.dart';
import 'package:dio/dio.dart';

makeVisit(Visit visit) async {
  try {
    Response response =
        await Dio().post('$baseApi/visits.json', data: visit.toJson());
    if (response.statusCode == 200) {
      await Dio().patch(
          '$baseApi/visits/${response.data["name"].toString()}.json',
          data: {"id": response.data["name"].toString()});
    }
  } catch (e) {
    log(e);
  }
}

getVisits() async {
  try {
    Response response = await Dio().get('$baseApi/visits.json');
    Patient patient = await getPatientDetails();
    if (response.statusCode == 200) {
      List<Visit> visits = [];
      response.data.forEach((x) {
        if (Visit.fromJson(x).patientId == patient.id) {
          visits.add(Visit.fromJson(x));
        }
      });
      return visits;
    } else {
      return [];
    }
  } catch (e) {
    log(e);
  }
}

getVisitDetails(String id) async {
  try {
    Response response = await Dio().get('$baseApi/visits/$id.json');

    Visit visit = Visit.fromJson(response.data);

    return visit;
  } catch (e) {
    log(e);
  }
}
