import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_jobs_applications/models/job_application.dart';

class JobData {
  static saveJob(data) async {
    final firestore = FirebaseFirestore.instance;
    final collectionRef = firestore.collection('applications');
    await collectionRef.add(data);
  }

  static updateStatus(JobApplication jobApplication) {
    int newStatus = jobApplication.status ?? 0;
    newStatus++;
    newStatus %= 4;
    jobApplication.status = newStatus;
    updateJob(jobApplication);
  }

  static void updateJob(JobApplication jobApplication) {
    final firestore = FirebaseFirestore.instance;
    final collectionRef = firestore.collection('applications');
    collectionRef.doc(jobApplication.id).update(jobApplication.toFirestore());
  }
}