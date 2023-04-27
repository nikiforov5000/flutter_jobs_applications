import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/input_cell_widget.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/my_country_picker.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/save_button.dart';
import 'package:flutter_jobs_applications/screens/home_screen/widgets/text_field_widget.dart';

class InputSection extends StatelessWidget {
  const InputSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final rowHeight = height / 10;

    final companyInput = TextFieldWidget(label: 'company');
    final titleInput = TextFieldWidget(label: 'title');
    final MyCountryPicker countryPicker = MyCountryPicker();
    final urlInput = TextFieldWidget(label: 'url');

    return SizedBox(
      height: rowHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InputCellWidget(child: companyInput),
          InputCellWidget(child: titleInput),
          InputCellWidget(child: countryPicker),
          InputCellWidget(child: urlInput),
          SaveButton(
            companyWidget: companyInput,
            countryPicker: countryPicker,
            titleWidget: titleInput,
            urlWidget: urlInput,
          ),
        ],
      ),
    );
  }
}
