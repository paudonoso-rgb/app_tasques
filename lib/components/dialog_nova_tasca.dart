import 'package:app_tasks/colors_app.dart';
import 'package:app_tasks/components/boto_dialog.dart';
import 'package:app_tasks/components/textfieldpersonalitzat.dart';
import 'package:app_tasks/data/repositori_tasca.dart';
import 'package:app_tasks/data/tasca.dart' show Tasca;
import 'package:flutter/material.dart';

class DialogNovaTasca extends StatelessWidget {

  final String textTasca;
  final int indexTasca;

  const DialogNovaTasca({
    super.key,
    this.textTasca = "",
    this.indexTasca = -1,});

  @override
  Widget build(BuildContext context) {

    final TextEditingController controlerTextTasca = TextEditingController();

    return AlertDialog(
      //Fondo del dialogo
      backgroundColor: ColorsApp.accentColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        //Añadimos el side
        side: BorderSide(color: ColorsApp.secondaryColor, width: 2),
      ),

      title: Text(
        "Quina nova tasca vols afegir?",
        style: TextStyle(color: ColorsApp.primaryColor),
      ),
      content: Container(
        //Añadimos el height y width para limitar el contenido
        height: 150,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          //Añadimos un evenly para que quede uniforme
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [

            Textfieldpersonalitzat(controlerTitol: controlerTextTasca),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [


                BotoDialog(
                  text: "Tancar",
                  colorBoto: ColorsApp.closeColor,
                  iconBtn: Icon(Icons.close),
                  accioBoto: () => tancarTasca(context),
                ),


                BotoDialog(
                  text: "Guardar",
                  colorBoto: ColorsApp.greenColor,
                  iconBtn: Icon(Icons.save),
                  accioBoto: () => guardarTasca(context, controlerTextTasca.text),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> guardarTasca(BuildContext context, String text) async {

    final RepositoriTasca repositoriTasca = RepositoriTasca();

    final llista = repositoriTasca.getLlistaTasques();
    llista.add(Tasca(title: text));

    await repositoriTasca.setBox(llista);

    Navigator.of(context).pop();
  }

  void tancarTasca(BuildContext context) {
    Navigator.of(context).pop();
  }
}
