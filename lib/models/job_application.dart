import 'package:cloud_firestore/cloud_firestore.dart';

class JobApplication {
  String? title;
  String? url;
  String? country;
  String? company;
  DateTime? date;

  JobApplication({this.company, this.url, this.country, this.title, this.date});

  factory JobApplication.fromFirebase(QueryDocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return JobApplication(
      title: data['title'],
      url: data['url'],
      country: data['country'],
      company: data['company'],
      date: (data['date'] as Timestamp).toDate(),
    );
  }
}