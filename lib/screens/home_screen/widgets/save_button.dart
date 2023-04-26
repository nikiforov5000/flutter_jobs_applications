import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/services/company_provider.dart';
import 'package:flutter_jobs_applications/services/country_provider.dart';
import 'package:flutter_jobs_applications/services/title_provider.dart';
import 'package:flutter_jobs_applications/services/url_provider.dart';
import 'package:provider/provider.dart';

class SaveButton extends StatelessWidget {

  const SaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: ElevatedButton(
        onPressed: () async {
          final titleProvider = Provider.of<TitleProvider>(context, listen: false);
          final companyProvider = Provider.of<CompanyProvider>(context, listen: false);
          final countryProvider = Provider.of<CountryProvider>(context, listen: false);
          final urlProvider = Provider.of<UrlProvider>(context, listen: false);
          final data = {
            'title': titleProvider.value,
            'company': companyProvider.value,
            'country': countryProvider.value,
            'url': urlProvider.value,
            'date': DateTime.now(),
          };
          final firestore = FirebaseFirestore.instance;
          final collectionRef = firestore.collection('applications');
          await collectionRef.add(data);
        },
        child: const Text('Save'),
      ),
    );
  }
}
