import 'package:flutter/material.dart';
import '../personalized_widgets/custom_text.dart';
import '../personalized_widgets/custom_password_field.dart';

//shift alt F  autoindentar
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // siempre retorna un widget Scaffold, Container, Column, Text
      body: Center(
        child: Container(
          width: double.infinity, //permite todo el ancho disponible
          height: double.infinity, //permite todo la altura disponible
          padding: const EdgeInsets.all(30), //margenes por cada lado de 30px
          decoration: BoxDecoration(
            color: Colors.pink,
          ),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft, child: Icon(  Icons.close,  color: Colors.white, size: 30,), // Icons.close icono x de Material Icons
              ),
              const SizedBox(height: 10), //espacio entre x y la gota de agua
              const Icon(Icons.water_drop, color: Colors.white, size: 100), // Icons.gota de agua de Material Icons  
              const SizedBox(height: 40), //espacio entre la gota de agua y register
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'REGISTER',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w500, //negrilla 900 weight
                  ),
                ),
              ),
              const SizedBox(height: 40),
              //Text("First Name"),
             //TextField()
              const CustomText(tag: 'First Name'),
              const SizedBox(height: 20),
              const CustomText(tag: 'Last Name' ),
              const SizedBox(height: 20),
              const CustomText(tag: 'Email'),
              const SizedBox(height: 20),
              const CustomPasswordField(), //llama otra clase
              const SizedBox(height: 20),
              ElevatedButton( // boton ,requiere onpressed y un child
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, // si no se asigna, por defecto queda blanco
                  side: const BorderSide(color: Colors.white , width: 1,),//color del borde
                  elevation: 0, // sombra, si no se coloca la traer por defecto, se ve oscuro
                  shape: RoundedRectangleBorder(), // bordes cuadrados
                ),
                child: const Text(
                  'CREATE ACCOUNT',
                  style: TextStyle(color: Colors.white)
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
