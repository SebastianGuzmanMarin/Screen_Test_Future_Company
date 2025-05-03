import 'package:flutter/material.dart';

// diseño y estilo personalizado de un (TextFormField)
class CustomText extends StatelessWidget {
  final String tag; // etiquetas

  const CustomText({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: tag,
        labelStyle: const TextStyle(color: Colors.white),
        hintText: "Enter your $tag",
        hintStyle: TextStyle(color: Colors.grey),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
      validator: (x) {
        if (x == null || x.isEmpty) {
          return 'Por favor ingresa un valor';
        }
        return null;
      },
    );
  }
}
