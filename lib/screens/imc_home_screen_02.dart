import 'package:flutter/material.dart';
import 'package:screean_test_future_company/components/app_colors_imc.dart';
import 'package:screean_test_future_company/personalized_widgets/IMC/heigh_selector.dart';
import 'package:screean_test_future_company/personalized_widgets/IMC/xgender_selector.dart';

//stayfull es dinamico, cambia es estado, se puede cargar IU
class ImcCalculatorHome extends StatefulWidget {
  const ImcCalculatorHome({super.key});

  @override
  State<ImcCalculatorHome> createState() => _MyWidgetState(); // esto llama a la clase _MyWidgetState , _ es privado
}

class _MyWidgetState extends State<ImcCalculatorHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColorsImc.primary,
        foregroundColor: Colors.white,
        title: Text("IMC HOME"),
      ),
      backgroundColor: AppColorsImc.background,
      body: Column(children: [
        GenderSelector(),
        HeighSelector()]),
    );
  }
}
