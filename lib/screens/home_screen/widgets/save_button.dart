import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/data/job_data.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/my_country_picker.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/text_field_widget.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
    required this.countryPicker,
    required this.companyWidget,
    required this.titleWidget,
    required this.urlWidget,
  });

  final TextFieldWidget companyWidget;
  final TextFieldWidget titleWidget;
  final TextFieldWidget urlWidget;
  final MyCountryPicker countryPicker;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () async {
          final data = {
            'company': companyWidget.text,
            'title': titleWidget.text,
            'country': countryPicker.text,
            'url': urlWidget.text,
            'date': DateTime.now(),
            'status': 0,
          };

          JobData.saveJob(data);

          companyWidget.clear();
          titleWidget.clear();
          urlWidget.clear();
        },
        child: const Text('Save'),
      ),
    );
  }
}
