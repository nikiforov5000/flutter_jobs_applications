import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/my_country_picker.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/text_field_widget.dart';
import 'package:flutter_jobs_applications/services/company_provider.dart';
import 'package:flutter_jobs_applications/services/country_provider.dart';
import 'package:flutter_jobs_applications/services/title_provider.dart';
import 'package:flutter_jobs_applications/services/url_provider.dart';
import 'package:provider/provider.dart';

class SaveButton extends StatelessWidget {

  SaveButton({
    required this.countryPicker,
    required this.companyWidget,
    // required this.controllers,
  });
  final TextFieldWidget companyWidget;
  final MyCountryPicker countryPicker;
  // final List<TextEditingController> controllers;
  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: ElevatedButton(
        onPressed: () async {
          // final titleProvider = Provider.of<TitleProvider>(context, listen: false);
          // final companyProvider = Provider.of<CompanyProvider>(context, listen: false);
          // final countryProvider = Provider.of<CountryProvider>(context, listen: false);
          // final urlProvider = Provider.of<UrlProvider>(context, listen: false);
          final data = {
            'company': companyWidget.text,
            // 'title': titleProvider.value,
            'country': countryPicker.text,
            // 'url': urlProvider.value,
            'date': DateTime.now(),
          };
          final firestore = FirebaseFirestore.instance;
          final collectionRef = firestore.collection('applications');
          await collectionRef.add(data);

          companyWidget.clear();

          // for (var controller in controllers) { controller.clear(); }

          // titleProvider.value = null;
          // companyProvider.value = null;
          // countryProvider.value = null;
          // urlProvider.value = null;
        },
        child: const Text('Save'),
      ),
    );
  }
}
