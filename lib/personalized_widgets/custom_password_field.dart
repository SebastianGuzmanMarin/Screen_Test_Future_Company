import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key});

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

bool obscureText = true;

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText, // true or false
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: const TextStyle(color: Colors.white),
        hintText: "Enter your password",
        hintStyle: TextStyle(color: Colors.grey),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        suffixIcon: IconButton( //ícono al final del campo de texto
          icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off, color: Colors.white),
          onPressed: () {
            setState(() { // actualiza la interfaz DE usuario 
              obscureText = !obscureText;
            });
          },
        ),
      ),
    );
  }
}
