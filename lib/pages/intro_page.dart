import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_button.dart';

//shortcut stl
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.car_crash,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            //title
            const Text(
              "Car reparing",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            //subtitle
            const SizedBox(height: 10),
            Text(
              "Premium Quality service",
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            //button

            const SizedBox(height: 25),
            Mybutton(
              onTap: () => Navigator.pushNamed(context, '/shop_page'),
              child: const Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}
