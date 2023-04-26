import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/services/super_provider.dart';

class InputFieldWidget extends StatelessWidget {
  InputFieldWidget({required this.label, required this.provider});
  final SuperProvider provider;
  final String label;

  final noUnderline = InputDecoration(border: InputBorder.none);
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          color: Color(0xffffddaa),
          borderRadius: BorderRadius.circular(10),

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Center(child: Text(label))),
            Expanded(
              child: TextField(
                controller: controller,
                decoration: noUnderline,
                onChanged: (value) {
                  provider.value = value;

                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(context: context, builder: (context) {
                  return Text(provider.value ?? 'NULL');
                });
              },
              child: Text('Check'),
            ),
          ],
        ),
      ),
    );
  }
}


