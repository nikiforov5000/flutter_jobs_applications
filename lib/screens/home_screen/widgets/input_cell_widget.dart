import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/screens/home_screen/constants/colors.dart';

class InputCellWidget extends StatelessWidget {
  InputCellWidget({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 5.0),
        margin: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          color: kInputColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );;
  }
}