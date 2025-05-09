import 'package:flutter/material.dart';
import 'package:screean_test_future_company/components/text_styles.dart';
import 'package:screean_test_future_company/screens/image_example_02.dart';
import 'package:screean_test_future_company/screens/imc_home_screen_02.dart';
import 'package:screean_test_future_company/screens/register_screen_02.dart';
import 'package:screean_test_future_company/screens/text_field_screen_test_02.dart';

class HomeScreenSelection extends StatelessWidget {
  const HomeScreenSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey, // Fondo gris
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => RegisterScreen()));},
              child: Text('Register Screen First', style: TextStyles.bodyTextHomeScreen,),),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => TextFieldScreenTest()));}, 
              child: Text('Text Field Screen Test', style: TextStyles.bodyTextHomeScreen)),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => ImageExample()));}, 
              child: Text('images Example', style: TextStyles.bodyTextHomeScreen)),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => ImcCalculatorHome()));}, 
              child: Text('IMC Screen', style: TextStyles.bodyTextHomeScreen)),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {null;}, child: Text('none button', style: TextStyles.bodyTextHomeScreen)),
          ],
        ),
      ),
    );
  }
}
