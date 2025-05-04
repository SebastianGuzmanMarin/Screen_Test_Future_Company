import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:  Colors.cyan,
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context); // cierra la ventana
                },
                icon: const Icon(Icons.close, color: Colors.white),
                iconSize: 30,
              )),
              Image.asset("assets/images/bikerSebas.jpg"),
              SizedBox(height: 10),
              Image.network("https://avatars.githubusercontent.com/u/73042714?s=400&u=48b930760af040c7dd8c2d7352aff43467db9bff&v=4", scale: 1),
          ],
        ),
      )
    );
  }
}
