import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/screens/home_screen/constants/colors.dart';
import 'package:flutter_jobs_applications/services/country_provider.dart';
import 'package:provider/provider.dart';

class MyCountryPicker extends StatefulWidget {

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
    return Expanded(
      child: GestureDetector(
        onTap: () {
          showCountryPicker(
            favorite: favorite,
            context: context,
            onClosed: () {
              countryProvider.value = countryCode;
            },
            onSelect: (value) {
              setState(() {
                countryCode = value.countryCode;
              });
            },
          );
        },
        child: Container(
          color: kInputColor,
          child: Text(countryCode ?? 'Country'),
        ),
      ),
    );
  }
}


