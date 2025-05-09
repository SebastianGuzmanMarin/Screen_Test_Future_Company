import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({
    super.key,
    required this.nombre,
    required this.apellido,
    required this.email,
  });

  final String nombre;
  final String apellido;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // el container subraya con una linea amarilla, se uso escaffold por esos
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green,
        padding: const EdgeInsets.all(40),
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
            SizedBox(),
            const Icon(Icons.verified_user, color: Colors.white, size: 150),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Welcome $nombre $apellido ,\n your email is $email )",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 300),
          ],
        ),
      ),
    );
  }
}
