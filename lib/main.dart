import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jobs_applications/screens/home_screen/home_screen.dart';
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
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: HomeScreen(),
        ),
      ),
    );
  }
}






