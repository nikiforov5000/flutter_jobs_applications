import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_jobs_applications/models/job_application.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/item_cell_text.dart';
import 'package:flutter_jobs_applications/utils/dateConverter.dart';
import 'package:flutter_jobs_applications/utils/my_colors.dart';

class JobsListItem extends StatelessWidget {
  const JobsListItem(this.index, this.jobApplication, {super.key});

  final int index;
  final JobApplication jobApplication;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () async {
        await Clipboard.setData(ClipboardData(text: jobApplication.url));
      },

      child: Container(
        height: getRowHeight(height),
        color: MyColors.randomLightColor(),
        child: Row(
          children: [
            Text(index.toString()),
            ItemCellText(data: jobApplication.company),
            ItemCellText(data: jobApplication.title),
            ItemCellText(data: jobApplication.country),
            ItemCellText(data: jobApplication.url),
            ItemCellText(data: jobApplication.date?.toDdMmYy()),
          ],
        ),
      ),
    );
  }
}

getRowHeight(double height) {
  double rowHeight = 100.0;
  if (height > 700) {
    rowHeight = height / 30;
  }
  else {
    rowHeight = height / 20;
  }
  rowHeight = max(rowHeight, 20.0);
  return rowHeight;
}
