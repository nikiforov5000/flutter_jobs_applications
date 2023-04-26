import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/jobs_list_view.dart';

class JobsStreamBuilder extends StatelessWidget {
  const JobsStreamBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('applications').snapshots(),
      builder: (context, snapshot) {
        if (snapshot == null || !snapshot.hasData) {
          return Text('Snapshot is empty');
        }
        return JobsListView(snapshot: snapshot);
      },
    );
  }
}
