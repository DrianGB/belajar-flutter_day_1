import 'package:flutter/material.dart';
import 'package:license_app/pages/home.dart';

void main() {
  runApp(const MyAppLicense());
}

class MyAppLicense extends StatelessWidget{
  const MyAppLicense({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

