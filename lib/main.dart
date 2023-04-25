import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputSection(),
        // JobsStreamBuilder(),
      ],
    );
  }
}

class InputSection extends StatefulWidget {
  const InputSection({Key? key}) : super(key: key);

  @override
  State<InputSection> createState() => _InputSectionState();
}

class _InputSectionState extends State<InputSection> {
  TextEditingController companyController = TextEditingController();
  TextEditingController urlController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InputFieldWidget(label: 'Company', controller: companyController),
        InputFieldWidget(label: 'URL', controller: urlController),
        InputFieldWidget(label: 'Country', controller: countryController),
        InputFieldWidget(label: 'Title', controller: titleController),
        SaveButton(
            company: companyController.text,
            url: urlController.text,
            country: countryController.text,
            title: titleController.text,
        ),
      ],
    );
  }
}

class SaveButton extends StatelessWidget {
  final String company;
  final String url;
  final String country;
  final String title;

  const SaveButton({
    Key? key,
    required this.title,
    required this.company,
    required this.country,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {

      },
      child: Text('Save'),
    );
  }
}


class InputFieldWidget extends StatelessWidget {
  InputFieldWidget({required this.label, required this.controller});
  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final noUnderline = InputDecoration(border: InputBorder.none);
    final textField = TextField(controller: controller, decoration: noUnderline,);

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
            Expanded(child: textField)
          ],
        ),
      ),
    );
  }
}




