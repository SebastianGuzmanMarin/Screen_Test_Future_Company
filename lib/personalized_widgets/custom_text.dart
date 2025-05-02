import 'package:flutter/material.dart';

// diseño y estilo personalizado de un (TextFormField)
class CustomText extends StatelessWidget {
  final String tag; // etiquetas

  const CustomText({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: tag,
        labelStyle: const TextStyle(color: Colors.white), // color del texto
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white), // color linea debajo sin seleccionarse
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black), // color linea debajo cuando se selecciona
        ),
      ),
    );
  }
}
