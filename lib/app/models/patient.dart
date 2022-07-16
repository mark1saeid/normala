class Patient {
  String id;
  String gender;
  int age;
  String firstName;
  String secoundName;
  String photo;
  String email;
  String phone;
  String location;
  String locationCoordinates;

  Patient(
      {this.id,
      this.gender,
      this.age,
      this.photo,
      this.firstName,
      this.secoundName,
      this.email,
      this.phone,
      this.location,
      this.locationCoordinates});

  Patient.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    gender = json['gender'];
    age = json['age'];
    photo = json['photo'];
    firstName = json['firstName'];
    secoundName = json['secoundName'];
    email = json['email'];
    phone = json['phone'];
    location = json['location'];
    locationCoordinates = json['locationCoordinates'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['gender'] = gender;
    data['age'] = age;
    data['firstName'] = firstName;
    data['secoundName'] = secoundName;
    data['email'] = email;
    data['photo'] = photo;
    data['phone'] = phone;
    data['location'] = location;
    data['locationCoordinates'] = locationCoordinates;
    return data;
  }
}
