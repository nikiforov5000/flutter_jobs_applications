import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/models/job_application.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/jobs_list_item.dart';

class JobsListView extends StatelessWidget {
  const JobsListView({super.key, required this.snapshot});

  final AsyncSnapshot<QuerySnapshot<Object?>> snapshot;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: snapshot.data?.docs.length,
        itemBuilder: (BuildContext context, int index) {
          final doc = snapshot.data?.docs[index];
          if (doc == null || !doc.exists) {
            return const Placeholder(child: Text('NULL document'));
          }
          final JobApplication jobApplication =
              JobApplication.fromFirebase(doc);
          return JobsListItem(index, jobApplication);
        },
      ),
    );
  }
}
