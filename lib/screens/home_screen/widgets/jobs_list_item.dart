import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/models/job_application.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/item_cell_text.dart';
import 'package:flutter_jobs_applications/utils/dateConverter.dart';
import 'package:flutter_jobs_applications/utils/my_colors.dart';

class JobsListItem extends StatelessWidget {
  JobsListItem(this.index, this.jobApplication);

  final int index;
  final JobApplication jobApplication;

  @override
  Widget build(BuildContext context) {

    return Container(
      color: MyColors.randomLightColor(),
      child: Row(
        children: [
          Text(index.toString()),
          ItemCellText(data: jobApplication.company,),
          ItemCellText(data: jobApplication.title,),
          ItemCellText(data: jobApplication.country,),
          ItemCellText(data: jobApplication.url,),
          ItemCellText(data: jobApplication.date?.toDdMmYy(),),
        ],
      ),
    );
  }
}



