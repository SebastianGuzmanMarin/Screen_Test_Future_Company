import 'package:flutter/material.dart';
import 'package:screean_test_future_company/screens/confirmation_screen_03.dart';
import '../personalized_widgets/custom_text_field.dart';
import '../personalized_widgets/custom_password_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}


// se inicializan las variables  de los controller, pero solo el texediting

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
final TextEditingController _nameController = TextEditingController();
final TextEditingController _lastNameController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // revisar: cuando se gira el dispositivo no se muestra la ventana bien
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(40),
        decoration: BoxDecoration(color: Colors.blue),
        child: Form(
          key: _formKey,
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
              CustomText(
                tag: 'First Name',
                controller: _nameController,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              CustomText(
                tag: 'Last Name',
                controller: _lastNameController,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your last name';
                  }
                  return null;
                },
              ),
              CustomText(
                tag: 'Email',
                controller: _emailController, // se asignan los controladores en cada widget personalizado
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your name email';
                  }
                  return null;
                },
              ), 
              CustomPasswordField(),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final name = _nameController.text;
                    final lastName = _lastNameController.text;
                    final email = _emailController.text;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => ConfirmationScreen(
                              nombre: name,
                              apellido: lastName,
                              email: email,
                            ),
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) { 
                        return AlertDialog(
                          title: Text("ALERT"),
                          content: Text("Please complete all fields"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(
                                  context,
                                ).pop(); 
                              },
                              child: Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors
                          .transparent, // si no se asigna, por defecto queda blanco
                  side: const BorderSide(color: Colors.white, width: 1),
                  elevation: 0,
                  shape: RoundedRectangleBorder(), // bordes cuadrados
                ),
                child: const Text(
                  'CREATE ACCOUNT',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
