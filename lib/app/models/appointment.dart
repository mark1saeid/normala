class Appointment {
  String id;
  String doctorId;
  String patientId;
  String type;
  String symptoms;
  String note;
  String time;
  String date;
  bool confirmed;

  Appointment(
      {this.id,
      this.doctorId,
      this.patientId,
      this.type,
      this.symptoms,
      this.note,
      this.time,
      this.date,
      this.confirmed});

  Appointment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    doctorId = json['doctorId'];
    patientId = json['patientId'];
    type = json['type'];
    symptoms = json['Symptoms'];
    note = json['note'];
    time = json['time'];
    date = json['date'];
    confirmed = json['confirmed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['doctorId'] = doctorId;
    data['patientId'] = patientId;
    data['type'] = type;
    data['Symptoms'] = symptoms;
    data['note'] = note;
    data['time'] = time;
    data['date'] = date;
    data['confirmed'] = confirmed;
    return data;
  }
}
