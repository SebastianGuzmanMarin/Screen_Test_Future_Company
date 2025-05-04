import 'package:flutter/material.dart';
import 'package:screean_test_future_company/components/image_example.dart';
import 'package:screean_test_future_company/screens/confirmation_screen.dart';
import 'package:screean_test_future_company/screens/text_field_screen_test.dart';
//import 'package:screean_test_future_company/screens/confirmation_screen.dart';
import '../personalized_widgets/custom_text_field.dart';
import '../personalized_widgets/custom_password_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // revisar: cuando se gira el dispositivo no se muestra la ventana bien
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(40),
        decoration: BoxDecoration(color: Colors.blue),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context); // cierra la ventana
                },
                icon: const Icon(Icons.close, color: Colors.white),
                iconSize: 30,
              ),
            ),
            const Icon(Icons.security, color: Colors.white, size: 100),
            const Align(
              alignment: Alignment.topCenter,
              child: Text(
                'REGISTER',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w900, //negrilla 900 weight
                ),
              ),
            ),
            const CustomText(tag: 'First Name'),
            const CustomText(tag: 'Last Name'),
            const CustomText(tag: 'Email'),
            const CustomPasswordField(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => ConfirmationScreen(nombre: "")));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors
                        .transparent, // si no se asigna, por defecto queda blanco
                side: const BorderSide(
                  color: Colors.white,
                  width: 1,
                ), //color del borde
                elevation:
                    0, // sombra, si no se coloca la traer por defecto, se ve oscuro
                shape: RoundedRectangleBorder(), // bordes cuadrados
              ),
              child: const Text(
                'CREATE ACCOUNT',
                style: TextStyle(color: Colors.white, fontSize: 20)
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => ImageExample()));},
              style: ElevatedButton.styleFrom(
                backgroundColor:Colors.transparent, // si no se asigna, por defecto queda blanco
                side: const BorderSide(
                  color: Colors.white,
                  width: 1,),
                elevation: 0,
                shape: StadiumBorder(),
              ),
              child: const Text(
                'Show images',
                style: TextStyle(color: Colors.white, fontSize: 20)
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => TextFieldScreenTest()));},
              style: ElevatedButton.styleFrom(
                backgroundColor:Colors.transparent, // si no se asigna, por defecto queda blanco
                side: const BorderSide(
                  color: Colors.white,
                  width: 2,),
                elevation: 0,
                shape: StadiumBorder(),
              ),
              child: const Text(
                'Second Register Screen',
                style: TextStyle(color: Colors.white, fontSize: 20)
              ),
            )
          ],
        ),
      ),
    );
  }
}
