import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/services/company_provider.dart';
import 'package:flutter_jobs_applications/services/country_provider.dart';
import 'package:flutter_jobs_applications/services/super_provider.dart';
import 'package:flutter_jobs_applications/services/title_provider.dart';
import 'package:flutter_jobs_applications/services/url_provider.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.android,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CompanyProvider()),
        ChangeNotifierProvider(create: (_) => CountryProvider()),
        ChangeNotifierProvider(create: (_) => UrlProvider()),
        ChangeNotifierProvider(create: (_) => TitleProvider()),
      ],
      child: MaterialApp(
        home: Scaffold(
          body: MainScreen(),
        ),
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

  @override
  Widget build(BuildContext context) {
    final companyProvider = Provider.of<CompanyProvider>(context);
    final urlProvider = Provider.of<UrlProvider>(context);
    final countryProvider = Provider.of<CountryProvider>(context);
    final titleProvider = Provider.of<TitleProvider>(context);

    return Row(
      children: [
        InputFieldWidget(label: 'Company', provider: companyProvider),
        InputFieldWidget(label: 'URL', provider: urlProvider),
        InputFieldWidget(label: 'Country', provider: countryProvider),
        InputFieldWidget(label: 'Title', provider: titleProvider),
        SaveButton(
            // company: companyController.text,
            // url: urlController.text,
            // country: countryController.text,
            // title: titleController.text,
        ),
      ],
    );
  }
}

class SaveButton extends StatelessWidget {

  SaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        ElevatedButton(
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
          child: Text('Save'),
        ),
        ElevatedButton(
          onPressed: () {
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
            showDialog(context: context, builder: (context) {
              return Text(data.toString());
            });
          },
          child: Text('Check'),
        )
      ],
    );
  }
}


class InputFieldWidget extends StatelessWidget {
  InputFieldWidget({required this.label, required this.provider});
  final SuperProvider provider;
  final String label;

  final noUnderline = InputDecoration(border: InputBorder.none);
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
            Expanded(
              child: TextField(
                controller: controller,
                decoration: noUnderline,
                onChanged: (value) {
                  provider.value = value;

                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(context: context, builder: (context) {
                  return Text(provider.value ?? 'NULL');
                });
              },
              child: Text('Check'),
            ),
          ],
        ),
      ),
    );
  }
}




