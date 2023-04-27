import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    super.key,
    required this.label,
  });

  TextEditingController controller = TextEditingController();
  final String label;

  String get text => controller.text;
  void clear() => controller.clear();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: label,
        border: InputBorder.none,
      ),
    );
  }
}
