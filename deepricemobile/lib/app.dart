import 'package:deepricemobile/screens/disease_classification/disease_classification_screen.dart';
import 'package:deepricemobile/screens/drone_reports/drone_reports_screen.dart';
import 'package:deepricemobile/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: dotenv.env['APP_TITLE']?? 'Application',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/' : (context) => HomeScreen(),
        '/disease-detection' : (context) => DiseaseClassificationScreen(),
        '/drone-reports' : (context) => DroneReportsScreen()
      },
    );
  }
}