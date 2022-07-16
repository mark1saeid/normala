import 'dart:developer';

import 'package:appointment/app/models/appointment.dart';
import 'package:appointment/app/models/patient.dart';
import 'package:appointment/app/services/patient_service.dart';

import 'package:appointment/helpers/constants/strings.dart';
import 'package:dio/dio.dart';

makeAppointment(Appointment appointment) async {
  try {
    Response response = await Dio()
        .post('$baseApi/appointments.json', data: appointment.toJson());
    if (response.statusCode == 200) {
      //  print("${response.data["name"].toString()}");
      await Dio().patch(
          '$baseApi/appointments/${response.data["name"].toString()}.json',
          data: {"id": response.data["name"].toString()});
    }
  } catch (e) {
    log(e);
  }
}

getAppointments() async {
  try {
    Response response = await Dio().get('$baseApi/appointments.json');
    Patient patient = await getPatientDetails();
    if (response.statusCode == 200) {
      List<Appointment> appointments = [];
      response.data.forEach((x) {
        if (Appointment.fromJson(x).patientId == patient.id) {
          appointments.add(Appointment.fromJson(x));
        }
      });

      return appointments;
    } else {
      return [];
    }
  } catch (e) {
    log(e);
  }
}

getAppointmentDetails(String id) async {
  try {
    Response response = await Dio().get('$baseApi/appointments/$id.json');

    Appointment appointment = Appointment.fromJson(response.data);

    return appointment;
  } catch (e) {
    log(e);
  }
}
