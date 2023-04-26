import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/input_cell_widget.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/my_country_picker.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/save_button.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/text_field_widget.dart';
import 'package:flutter_jobs_applications/services/company_provider.dart';
import 'package:flutter_jobs_applications/services/title_provider.dart';
import 'package:flutter_jobs_applications/services/url_provider.dart';
import 'package:provider/provider.dart';

class InputSection extends StatelessWidget {
  const InputSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final companyProvider = Provider.of<CompanyProvider>(context);
    final urlProvider = Provider.of<UrlProvider>(context);
    final titleProvider = Provider.of<TitleProvider>(context);

    final height = MediaQuery.of(context).size.height;
    final rowHeight = height / 10;


    TextEditingController companyController = TextEditingController();
    final companyInput = TextFieldWidget(label: 'company', provider: companyProvider, controller: companyController);

    TextEditingController titleController = TextEditingController();
    final titleInput = TextFieldWidget(label: 'title', provider: titleProvider, controller: titleController,);

    TextEditingController urlController = TextEditingController();
    final urlInput = TextFieldWidget(label: 'url', provider: urlProvider, controller: urlController);

    final MyCountryPicker countryPicker = MyCountryPicker();

    List<TextEditingController> controllers = [
      companyController,
      titleController,
      urlController,
    ];

    return SizedBox(
      height: rowHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InputCellWidget(child: companyInput),
          InputCellWidget(child: titleInput),
          InputCellWidget(child: countryPicker),
          InputCellWidget(child: urlInput),
          SaveButton(controllers: controllers),
        ],
      ),
    );
  }
}
