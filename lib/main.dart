import 'package:flutter/material.dart';
import 'package:screean_test_future_company/screens/register_screen.dart';
import 'package:screean_test_future_company/screens/text_field_screen_test.dart';
//import 'screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen (), //RegisterScreen(),
    );
  }
}
