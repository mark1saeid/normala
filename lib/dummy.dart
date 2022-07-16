import 'package:appointment/app/models/appointment.dart';
import 'package:appointment/app/models/doctor.dart';
import 'package:appointment/app/models/patient.dart';
import 'package:appointment/app/models/visit.dart';

import 'app/models/nurse.dart';

List<Doctor> doctors = [
  Doctor(
      id: "0",
      shortDesc:"Lorem ipsum dolor sit amet",
      name: "Daniel M Payne",
      image: "https://pngimg.com/uploads/doctor/doctor_PNG15988.png",
      about:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin imperdiet tellus nunc, nec tempor massa maximus pretium. Aenean placerat, elit eu feugiat egestas, massa ligula dictum libero, in malesuada elit mi vel felis. Vivamus ut ipsum sit amet enim varius tincidunt sed nec leo. Mauris nulla ex, dictum sit amet porta ut, feugiat sit amet turpis. Nullam rhoncus lacus at erat blandit ultricies. Maecenas id quam ex. Nulla feugiat imperdiet augue in sodales. Donec dignissim tempus rhoncus. Ut eget lorem vitae odio suscipit feugiat at vel felis.",
      rating: 5,
      specialty: "Mauris varius, lacus in",
      experience: 5,
      phone: "01234567890",
      location: "ut posuere. Mauris mollis, quam",
      advicePrice: 45,
      available: true,
      detectionPrice: 150),
  Doctor(
      id: "1",
      name: "Joseph F Warnke",
      shortDesc:"Lorem ipsum dolor sit amet",
      image: "https://mylocalstudy.com/wp-content/uploads/2020/01/doctor.png",
      about:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin imperdiet tellus nunc, nec tempor massa maximus pretium. Aenean placerat, elit eu feugiat egestas, massa ligula dictum libero, in malesuada elit mi vel felis. Vivamus ut ipsum sit amet enim varius tincidunt sed nec leo. Mauris nulla ex, dictum sit amet porta ut, feugiat sit amet turpis. Nullam rhoncus lacus at erat blandit ultricies. Maecenas id quam ex. Nulla feugiat imperdiet augue in sodales. Donec dignissim tempus rhoncus. Ut eget lorem vitae odio suscipit feugiat at vel felis.",
      rating: 4,
      specialty: "hendrerit pretium",
      experience: 4,
      location: "ut posuere. Mauris mollis, quam",
      phone: "01234567890",
      available: true,
      advicePrice: 45,
      detectionPrice: 150),
  Doctor(
      id: "2",
      shortDesc:"Lorem ipsum dolor sit amet",
      name: "Jasmin A Pierce",
      image:
          "https://www.pngall.com/wp-content/uploads/2018/05/Doctor-Free-PNG-Image.png",
      about:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin imperdiet tellus nunc, nec tempor massa maximus pretium. Aenean placerat, elit eu feugiat egestas, massa ligula dictum libero, in malesuada elit mi vel felis. Vivamus ut ipsum sit amet enim varius tincidunt sed nec leo. Mauris nulla ex, dictum sit amet porta ut, feugiat sit amet turpis. Nullam rhoncus lacus at erat blandit ultricies. Maecenas id quam ex. Nulla feugiat imperdiet augue in sodales. Donec dignissim tempus rhoncus. Ut eget lorem vitae odio suscipit feugiat at vel felis.",
      rating: 4.8,
      specialty: "pulvinar tellus",
      location: "ut posuere. Mauris mollis, quam",
      experience: 3,
      phone: "01234567890",
      available: true,
      advicePrice: 45,
      detectionPrice: 150),
];

List<Nurse> nurses = [
  Nurse(
    id: "4",
    shortDesc:"Lorem ipsum dolor sit amet",
    name: "Daniel M Payne",
    image: "https://pngimg.com/uploads/doctor/doctor_PNG15988.png",
    about:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin imperdiet tellus nunc, nec tempor massa maximus pretium. Aenean placerat, elit eu feugiat egestas, massa ligula dictum libero, in malesuada elit mi vel felis. Vivamus ut ipsum sit amet enim varius tincidunt sed nec leo. Mauris nulla ex, dictum sit amet porta ut, feugiat sit amet turpis. Nullam rhoncus lacus at erat blandit ultricies. Maecenas id quam ex. Nulla feugiat imperdiet augue in sodales. Donec dignissim tempus rhoncus. Ut eget lorem vitae odio suscipit feugiat at vel felis.",
    rating: 5,
    experience: 5,
    phone: "01234567890",
    location: "ut posuere. Mauris mollis, quam",
    available: true,
  ),
  Nurse(
    id: "5",
    shortDesc:"Lorem ipsum dolor sit amet",
    name: "Joseph F Warnke",
    image: "https://mylocalstudy.com/wp-content/uploads/2020/01/doctor.png",
    about:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin imperdiet tellus nunc, nec tempor massa maximus pretium. Aenean placerat, elit eu feugiat egestas, massa ligula dictum libero, in malesuada elit mi vel felis. Vivamus ut ipsum sit amet enim varius tincidunt sed nec leo. Mauris nulla ex, dictum sit amet porta ut, feugiat sit amet turpis. Nullam rhoncus lacus at erat blandit ultricies. Maecenas id quam ex. Nulla feugiat imperdiet augue in sodales. Donec dignissim tempus rhoncus. Ut eget lorem vitae odio suscipit feugiat at vel felis.",
    rating: 4.6,
    experience: 4,
    location: "ut posuere. Mauris mollis, quam",
    phone: "01234567890",
    available: true,
  ),
  Nurse(
    id: "6",
    shortDesc:"Lorem ipsum dolor sit amet",
    name: "Jasmin A Pierce",
    image:
        "https://www.pngall.com/wp-content/uploads/2018/05/Doctor-Free-PNG-Image.png",
    about:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin imperdiet tellus nunc, nec tempor massa maximus pretium. Aenean placerat, elit eu feugiat egestas, massa ligula dictum libero, in malesuada elit mi vel felis. Vivamus ut ipsum sit amet enim varius tincidunt sed nec leo. Mauris nulla ex, dictum sit amet porta ut, feugiat sit amet turpis. Nullam rhoncus lacus at erat blandit ultricies. Maecenas id quam ex. Nulla feugiat imperdiet augue in sodales. Donec dignissim tempus rhoncus. Ut eget lorem vitae odio suscipit feugiat at vel felis.",
    rating: 4,
    location: "ut posuere. Mauris mollis, quam",
    experience: 3,
    phone: "01234567890",
    available: true,
  ),
];

Patient patients = Patient(
    id: "0",
    gender: "male",
    age: 20,
    firstName: "Brad",
    secoundName: "Carr",
    email: "nelson_magg@yahoo.com",
    phone: "2132170093",
    location: "sollicitudin nulla, sed",
    locationCoordinates: "29.669861, 27.247472");

List<Appointment> appointments = [
  Appointment(
      id: "0",
      doctorId: "0",
      patientId: "0",
      type: "detection", //advice and detection
      symptoms: "symptoms",
      note:
          "Pellentesque porttitor accumsan lacus at auctor. Praesent lacus justo, sagittis in nisi ac, tempus convallis eros.",
      time: "11.30 AM",
      date: "1/10/2021",
      confirmed: true),
  Appointment(
      id: "1",
      doctorId: "1",
      patientId: "0",
      type: "advice", //advice and detection
      symptoms: "symptoms",
      note:
          "Pellentesque porttitor accumsan lacus at auctor. Praesent lacus justo, sagittis in nisi ac, tempus convallis eros.",
      time: "12.00 AM",
      date: "2/10/2021",
      confirmed: false)
];

List<Visit> visits = [
  Visit(
      id: "0",
      visitorId: "0",
      patientId: "0",
      reason: "symptoms",
      note:
          "Pellentesque porttitor accumsan lacus at auctor. Praesent lacus justo, sagittis in nisi ac, tempus convallis eros.",
      time: "11.30 AM",
      date: "1/10/2021",
      confirmed: true),
  Visit(
      id: "1",
      visitorId: "5",
      patientId: "0",
      reason: "symptoms",
      note:
          "Pellentesque porttitor accumsan lacus at auctor. Praesent lacus justo, sagittis in nisi ac, tempus convallis eros.",
      time: "12.00 AM",
      date: "2/10/2021",
      confirmed: false)
];
