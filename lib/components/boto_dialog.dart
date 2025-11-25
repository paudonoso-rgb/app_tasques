import 'package:app_tasques/colors_app.dart';
import 'package:flutter/material.dart';

class BotoDialog extends StatelessWidget {
  final String textBoton;
  final Color colorBoton;
  final Icon iconBoton;
  final Function()? accioBoton;


  const BotoDialog({
    super.key,
    required this.textBoton,
    required this.colorBoton,
    required this.iconBoton,
    required this.accioBoton,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        decoration: BoxDecoration(
          color: colorBoton,
          borderRadius: BorderRadius.circular(20),
        ),
      
      
        child: Row(
          children: [
            Icon(iconBoton.icon, color: ColorsApp.colorSegonari,),
             SizedBox(width: 8),
              Text(textBoton)],
        ),
      ),
    );
  }
}
