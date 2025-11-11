import 'package:flutter/material.dart';

class Pantallatasquesmitjanes extends StatelessWidget {
  const Pantallatasquesmitjanes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Mida mitjana de pantalla'),
            SizedBox(
              width: 700,
              height: 700,
              child: Image.asset(
                'lib/images/gatillo.jpg',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}