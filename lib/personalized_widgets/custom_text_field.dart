import 'package:flutter/material.dart';

// diseño y estilo personalizado de un (TextFormField)
class CustomText extends StatelessWidget {
  final String tag;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const CustomText({
    super.key,required this.tag,required this.controller, this.validator,
  }); // se crean los parametros tag y controller, que deben ser recibidos cuando se llame este widget

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.white, fontSize: 22),
      decoration: InputDecoration(
        labelText: tag,
        labelStyle: const TextStyle(color: Colors.white, fontSize: 22),
        hintText: "Enter your $tag",
        hintStyle: const TextStyle(color: Colors.grey),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
