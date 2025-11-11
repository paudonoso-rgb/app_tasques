import 'package:flutter/material.dart';

class Pantallatasquesgrans extends StatelessWidget {
  const Pantallatasquesgrans({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Mida gran de pantalla'),
          SizedBox(height: 16),
          SizedBox(
            width: 700,
            height: 700,
            child: Image.asset(
              'lib/images/dance-moves.gif',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
      ),
    );
  }
}