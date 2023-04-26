import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/services/super_provider.dart';
class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.provider,
    required this.label,
    required this.controller,
  });

  final SuperProvider provider;
  final label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: label,
        border: InputBorder.none,
      ),
      onChanged: (value) {
        provider.value = value;
      },
    );
  }
}