import 'package:flutter/material.dart';

class CellText extends StatelessWidget {
  CellText({Key? key, this.text}) : super(key: key);
  String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      overflow: TextOverflow.ellipsis,
    );
  }
}
