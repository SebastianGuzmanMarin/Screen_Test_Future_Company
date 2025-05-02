import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key}); //constructor

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState(); //privado
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      style: const TextStyle(color: Colors.white), // color del texto ingresado
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: const TextStyle(color: Colors.white), // color de la palabra password
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        suffixIcon: IconButton( //ícono al final del campo de texto
          icon: Icon(
             Icons.visibility, //materia dart
            color: Colors.white,
          ),
          onPressed: () { 

            
          },
        ),
      ),
    );
  }
}
