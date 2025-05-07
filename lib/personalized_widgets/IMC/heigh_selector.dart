import 'package:flutter/material.dart';
import 'package:screean_test_future_company/components/app_colors_imc.dart';
import 'package:screean_test_future_company/components/text_styles.dart';

class HeighSelector extends StatefulWidget {
  const HeighSelector({super.key});

  @override
  State<HeighSelector> createState() => _HeighSelectorState();
}

class _HeighSelectorState extends State<HeighSelector> {
  double height = 190; // altura inicial

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(color: AppColorsImc.backgroundComponent, borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text("Altura", style: TextStyles.bodyText),
              Text("${height.toStringAsFixed(0)} cm", style: TextStyle( color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)), //tostringasfixer cabia de tipo dobule a string con 0 decimales
              Slider(
                value: height,
                onChanged: (newHeight) {
                  setState(() {
                    height = newHeight;
                  });
                },
                min: 150,
                max: 220,
                divisions: 70,
                label: "$height cm",
                activeColor: AppColorsImc.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
