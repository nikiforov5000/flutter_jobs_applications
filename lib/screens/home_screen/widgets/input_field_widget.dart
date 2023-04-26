import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/services/super_provider.dart';

class InputFieldWidget extends StatelessWidget {
  InputFieldWidget({required this.label, required this.provider});
  final SuperProvider provider;
  final String label;

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
  final decoration = InputDecoration(border: InputBorder.none, hintText: label);
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 5.0),
        margin: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          color: Color(0xffffddaa),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Expanded(child: Center(child: Text(label))),
            Expanded(
              child: TextField(
                
                controller: controller,
                decoration: decoration,
                onChanged: (value) {
                  provider.value = value;

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


