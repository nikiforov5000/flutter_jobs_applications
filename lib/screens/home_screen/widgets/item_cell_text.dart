import 'package:flutter/material.dart';

class ItemCellText extends StatelessWidget {
  ItemCellText({Key? key, this.data}) : super(key: key);
  String? data;

  @override
  Widget build(BuildContext context) {
    data ??= 'null';
    double spacer = MediaQuery.of(context).size.width / 50;
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: spacer,),
          Text(data!),
          SizedBox(width: spacer,),
        ],
      ),
    );
  }
}