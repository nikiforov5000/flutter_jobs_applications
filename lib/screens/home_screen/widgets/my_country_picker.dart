import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/services/country_provider.dart';
import 'package:provider/provider.dart';

class MyCountryPicker extends StatefulWidget {
  get text => countryCode;
  String? countryCode;
  @override
  State<MyCountryPicker> createState() => _MyCountryPickerState();
}

class _MyCountryPickerState extends State<MyCountryPicker> {

  final List<String> favorite = [
    'TR',
    'GB',
    'FR',
    'KZ',
    'US'
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(child: Text(widget.countryCode ?? 'Country')),
      onTap: () {
        showCountryPicker(
          favorite: favorite,
          context: context,
          onSelect: (country) {
            setState(() {
              widget.countryCode = country.countryCode;
            });
          },
        );
      },

    );
  }
}


