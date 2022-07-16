class Visit {
  String id;
  String visitorId;
  String patientId;
  String reason;
  String note;
  String time;
  String date;
  bool confirmed;

  Visit(
      {this.id,
      this.visitorId,
      this.patientId,
      this.reason,
      this.note,
      this.time,
      this.date,
      this.confirmed});

  Visit.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    visitorId = json['visitorId'];
    patientId = json['patientId'];
    reason = json['reason'];
    note = json['note'];
    time = json['time'];
    date = json['date'];
    confirmed = json['confirmed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['visitorId'] = visitorId;
    data['patientId'] = patientId;
    data['reason'] = reason;
    data['note'] = note;
    data['time'] = time;
    data['date'] = date;
    data['confirmed'] = confirmed;
    return data;
  }
}
