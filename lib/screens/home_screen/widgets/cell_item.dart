import 'package:flutter/material.dart';

class CellItem extends StatelessWidget {
  Widget? child;
  final int flex;

  CellItem({
    Key? key,
    this.child,
    required this.flex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double spacer = MediaQuery.of(context).size.width / 50;
    return Expanded(
      flex: flex,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: spacer),
          Flexible(child: child ?? Container()),
          SizedBox(width: spacer),
        ],
      ),
    );
  }
}
