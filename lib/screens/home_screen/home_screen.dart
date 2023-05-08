import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/input_section.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/jobs_stream_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final spacer = width / 20.0;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: spacer),
      child: Column(
        children: const [
          InputSection(),
          JobsStreamBuilder(),
        ],
      ),
    );
  }
}
