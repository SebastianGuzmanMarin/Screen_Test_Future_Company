import 'package:flutter/material.dart';
import 'package:screean_test_future_company/screens/confirmation_screen_03.dart';

class TextFieldScreenTest extends StatelessWidget { // se esta usando un stateless widget
  TextFieldScreenTest({super.key});

final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        width: 500,
        height: 500,
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Align(alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context); // cierra la ventana
                },
                icon: const Icon(Icons.close, color: Colors.white),
                iconSize: 30,
              )),
            Spacer(),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter your name',
              ),
            ),
            Spacer(),
            Align(
              child: ElevatedButton(
                onPressed: () {
                  final name = _nameController.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfirmationScreen(nombre: name, apellido: '', email: '',),
                    ),
                  );
                },
                child: const Text('validate'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
