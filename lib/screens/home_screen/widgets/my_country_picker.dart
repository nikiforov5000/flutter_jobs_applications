import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/services/country_provider.dart';
import 'package:provider/provider.dart';

class MyCountryPicker extends StatefulWidget {
  MyCountryPicker({required this.controller});

  final TextEditingController controller;

  @override
  State<MyCountryPicker> createState() => _MyCountryPickerState();
}

class _MyCountryPickerState extends State<MyCountryPicker> {
  String? countryCode;

  final List<String> favorite = [
    'TR',
    'GB',
    'FR',
    'KZ',
    'US'
  ];

  @override
  Widget build(BuildContext context) {
    final countryProvider = Provider.of<CountryProvider>(context);
    return GestureDetector(
      child: Center(child: Text(countryProvider.value ?? 'Country')),

      onTap: () {
        showCountryPicker(
          favorite: favorite,
          context: context,
          onClosed: () {
            countryProvider.value = countryCode;
          },
          onSelect: (country) {

            setState(() {
              countryCode = country.countryCode;
            });
          },
        );
      },

    );
  }
}


