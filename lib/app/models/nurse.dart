class Nurse {
  String id;
  String name;
  String image;
  String about;
  double rating;
  String shortDesc;
  int experience;
  String phone;
  String location;
  bool available;

  Nurse({
    this.shortDesc,
    this.id,
    this.name,
    this.image,
    this.about,
    this.rating,
    this.experience,
    this.phone,
    this.available,
    this.location,
  });

  Nurse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    about = json['about'];
    rating = json['rating'];
    shortDesc = json['shortDesc'];
    experience = json['experience'];
    phone = json['phone'];
    location = json['location'];
    available = json['available'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['shortDesc'] = shortDesc;
    data['image'] = image;
    data['about'] = about;
    data['rating'] = rating;
    data['experience'] = experience;
    data['phone'] = phone;
    data['available'] = available;
    data['location'] = location;
    return data;
  }
}
