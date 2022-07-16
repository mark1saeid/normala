class Doctor {
  String id;
  String name;
  String image;
  String shortDesc;
  String about;
  double rating;
  String specialty;
  int experience;
  String phone;
  String location;
  bool available;
  int detectionPrice;
  int advicePrice;

  Doctor(
      {this.id,
      this.name,
        this.shortDesc,
      this.image,
      this.about,
      this.rating,
      this.specialty,
      this.experience,
      this.phone,
      this.available,
      this.location,
      this.detectionPrice,
      this.advicePrice});

  Doctor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    shortDesc = json['shortDesc'];
    image = json['image'];
    about = json['about'];
    rating = json['rating'];
    specialty = json['specialty'];
    experience = json['experience'];
    phone = json['phone'];
    location = json['location'];
    available = json['available'];
    detectionPrice = json['detectionPrice'];
    advicePrice = json['advicePrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['shortDesc'] = shortDesc;
    data['name'] = name;
    data['image'] = image;
    data['about'] = about;
    data['rating'] = rating;
    data['specialty'] = specialty;
    data['experience'] = experience;
    data['phone'] = phone;
    data['available'] = available;
    data['location'] = location;
    data['detectionPrice'] = detectionPrice;
    data['advicePrice'] = advicePrice;
    return data;
  }
}
