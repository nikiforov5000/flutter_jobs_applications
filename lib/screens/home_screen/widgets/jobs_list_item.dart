import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/models/job_application.dart';
import 'package:flutter_jobs_applications/utils/dateConverter.dart';

class JobsListItem extends StatelessWidget {
  JobsListItem(this.jobApplication);

  final JobApplication jobApplication;

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Row(
        children: [
          ItemTextCellText(data: jobApplication.company,),
          ItemTextCellText(data: jobApplication.country,),
          ItemTextCellText(data: jobApplication.title,),
          ItemTextCellText(data: jobApplication.url,),
          ItemTextCellText(data: jobApplication.date?.toDdMmYy(),),
        ],
      ),
    );
  }
}

class ItemTextCellText extends StatelessWidget {
  ItemTextCellText({Key? key, this.data}) : super(key: key);
  String? data;

  @override
  Widget build(BuildContext context) {
    data ??= 'null';
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(data!),
        ],
      ),
    );
  }
}

