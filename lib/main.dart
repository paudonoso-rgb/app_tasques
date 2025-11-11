import 'package:app_tasques/paginas/PantallaTasquesGrans.dart';
import 'package:app_tasques/paginas/PantallaTasquesMitjanes.dart';
import 'package:app_tasques/paginas/PantallaTasquesPetites.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
double ancho = 0;
final bool esweb = kIsWeb;

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width); // ancho de la pantalla
    print(MediaQuery.of(context).orientation); // orientació de la pantalla
    print(esweb); // si s'està executant en web o no
    
    ancho = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ancho < 600?  Pantallatasquespetites(): 
      ancho < 1200?  Pantallatasquesmitjanes() : 
      Pantallatasquesgrans(),
              );
  }
}
