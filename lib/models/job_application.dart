import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_jobs_applications/data/job_data.dart';

class JobApplication {
  String id;
  String? title;
  String? url;
  String? country;
  String? company;
  DateTime? date;
  int? status;

  JobApplication({
    required this.id,
    this.company,
    this.url,
    this.country,
    this.title,
    this.date,
    this.status
  });

  factory JobApplication.fromFirestore(QueryDocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return JobApplication(
      id: snapshot.id,
      title: data['title'],
      url: data['url'],
      country: data['country'],
      company: data['company'],
      date: (data['date'] as Timestamp).toDate(),
      status: data['status'] ?? 0,
    );
  }

  void updateStatus() {
    JobData.updateStatus(this);
  }

  Map<Object, Object?> toFirestore() {
    return {
      'company': company,
      'url': url,
      'country': country,
      'title': title,
      'date': date,
      'status': status,
    };
  }
}