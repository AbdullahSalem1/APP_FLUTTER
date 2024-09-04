import 'package:flutter/material.dart';
import 'package:flutter_application_4/offer_screen.dart';
import 'package:flutter_application_4/page2_screen.dart';
import 'package:flutter_application_4/page3_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: OfferScreen());
  }
}
