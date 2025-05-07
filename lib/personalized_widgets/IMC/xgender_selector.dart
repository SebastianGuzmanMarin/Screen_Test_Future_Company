import 'package:flutter/material.dart';
import 'package:screean_test_future_company/components/app_colors_imc.dart';
import 'package:screean_test_future_company/components/text_styles.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //!man
        Expanded(
          child: GestureDetector( // /todo widget es clicleable si se wrapea un un gesturedetector
          onTap: (){
            setState(() { // esto modifica la UI , Esto hace que el statefull cambie
              selectedGender = "MAN";
            });
          },
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 8),
              child: Container( //contenedor tiene una columna, la columna tiene el incono y el nombre
                decoration: BoxDecoration(
                  color:
                      selectedGender == "MAN"
                          ? AppColorsImc.backgroundComponent
                          : AppColorsImc.backgroundComponentSelected,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25), // margenes de la columna con el contenedor
                  child: Column(
                    children: [
                      Image.asset("assets/images/male.png", height: 150),
                      SizedBox(height: 8),
                      Text(
                        "Hombre",
                        style: TextStyles.bodyText,
                      ), //llama a la clase textstyles, personalizada
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        //!WOMAN
        Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() {
                selectedGender = "WOMAN";
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8, top: 16, bottom: 16, right: 16),
              child: Container(
                decoration: BoxDecoration(
                  color:
                      selectedGender == "WOMAN"
                          ? AppColorsImc.backgroundComponent
                          : AppColorsImc.backgroundComponentSelected,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Image.asset("assets/images/female.png", height: 150),
                      SizedBox(height: 8),
                      Text("Mujer", style: TextStyles.bodyText),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
