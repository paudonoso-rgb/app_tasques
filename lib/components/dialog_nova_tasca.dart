
import 'package:app_tasques/colors_app.dart';
import 'package:app_tasques/components/boto_dialog.dart';
import 'package:flutter/material.dart';

class DialogNovaTasca extends StatelessWidget {
  const DialogNovaTasca({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(

      backgroundColor: ColorsApp.colorSegonari,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),

      title: Text('Quina nova tasca vols afegir', style: TextStyle(color: ColorsApp.colorPrimari),),
      content: Container(
        child: Column(
          children: [
            TextField(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BotoDialog(textBoton: "Tancar", 
                colorBoton: ColorsApp.colorPrimari,
                iconBoton: Icon(Icons.close),
                accioBoton: () {
                  tancarDialog(context);
                },
                ),

                BotoDialog(textBoton: "Guardar",
                 colorBoton: ColorsApp.fondo,
                  iconBoton: Icon(Icons.save),
                  accioBoton: (){
                    guardarTasca(context);
                  }
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void guardarTasca(BuildContext context) {
    Navigator.of(context).pop();
  }

  void tancarDialog(BuildContext context) {
    Navigator.of(context).pop();
  }
}