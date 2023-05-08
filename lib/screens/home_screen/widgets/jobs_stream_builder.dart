import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/jobs_list_view.dart';

class JobsStreamBuilder extends StatelessWidget {
  const JobsStreamBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('applications').orderBy('date', descending: true).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError || !snapshot.hasData) {
          return const Text('Snapshot is empty');
        }
        return JobsListView(snapshot: snapshot);
      },
    );
  }
}
