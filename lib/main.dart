import 'package:flutter/material.dart';
import 'package:screean_test_future_company/components/app_colors_imc.dart';
import 'package:screean_test_future_company/screens/home_screen_selection_01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar( backgroundColor: AppColorsImc.primary,
        foregroundColor: Colors.white,
        title: Text("Home Screen",)),
        backgroundColor: AppColorsImc.background,
        body:
        HomeScreenSelection(),
      )
       //RegisterScreen(),
    );
  }
}
