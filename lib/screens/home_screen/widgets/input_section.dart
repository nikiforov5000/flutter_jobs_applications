import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/main.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/input_field_widget.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/save_button.dart';
import 'package:flutter_jobs_applications/services/company_provider.dart';
import 'package:flutter_jobs_applications/services/country_provider.dart';
import 'package:flutter_jobs_applications/services/title_provider.dart';
import 'package:flutter_jobs_applications/services/url_provider.dart';
import 'package:provider/provider.dart';

class InputSection extends StatefulWidget {
  const InputSection({Key? key}) : super(key: key);

  @override
  State<InputSection> createState() => _InputSectionState();
}

class _InputSectionState extends State<InputSection> {
  @override
  Widget build(BuildContext context) {
    final companyProvider = Provider.of<CompanyProvider>(context);
    final urlProvider = Provider.of<UrlProvider>(context);
    final countryProvider = Provider.of<CountryProvider>(context);
    final titleProvider = Provider.of<TitleProvider>(context);

    return Row(
      children: [
        InputFieldWidget(label: 'Company', provider: companyProvider),
        InputFieldWidget(label: 'Title', provider: titleProvider),
        InputFieldWidget(label: 'Country', provider: countryProvider),
        InputFieldWidget(label: 'URL', provider: urlProvider),
        const SaveButton(),
      ],
    );
  }
}
