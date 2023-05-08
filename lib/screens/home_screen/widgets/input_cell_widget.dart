import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/screens/home_screen/constants/colors.dart';

class InputCellWidget extends StatelessWidget {
  const InputCellWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 5.0),
        margin: const EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          color: kInputColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
