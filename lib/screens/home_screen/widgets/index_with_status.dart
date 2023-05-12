import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/models/job_application.dart';

class IndexWithStatus extends StatelessWidget {
  final JobApplication jobApplication;
  final int index;

  const IndexWithStatus({
    Key? key,
    required this.jobApplication,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = getStatusColor(jobApplication);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: GestureDetector(
        onTap: jobApplication.updateStatus,
        child: Center(
          child: Text(
            index.toString(),
            overflow: TextOverflow.fade,
          ),
        ),
      ),
    );
  }
}

Color getStatusColor(JobApplication jobApplication) {
  if (jobApplication.status != null) {
    switch (jobApplication.status) {
      case 1:
        {
          return Colors.redAccent;
        }
      case 2:
        {
          return Colors.green;
        }
      case 3:
        {
          return Colors.teal;
        }
    }
  }
  return Colors.grey;
}
