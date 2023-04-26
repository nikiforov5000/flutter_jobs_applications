import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/input_section.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/jobs_stream_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputSection(),
        JobsStreamBuilder(),
      ],
    );
  }
}