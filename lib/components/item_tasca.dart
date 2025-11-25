import 'package:app_tasques/colors_app.dart';
import 'package:flutter/material.dart';

class ItemTasca extends StatefulWidget {

  final bool valorInicialCheckbox;
  final String valorText;

  const ItemTasca({
    super.key, 
    this.valorInicialCheckbox = false,
    this.valorText = "",});

  @override
  State<ItemTasca> createState() => _ItemTascaState();
}

class _ItemTascaState extends State<ItemTasca> {

  late bool valorCheckbox; // variable per emmagatzemar l'estat del checkbox (late per inicialitzar després)
  
@override
  void initState() { // inicialitzador de l'estat del widget

    super.initState();
    valorCheckbox = widget.valorInicialCheckbox;
  }
  @override
  
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: ColorsApp.listaFons,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          //checkbox
          Checkbox(
            side: BorderSide(
              color: ColorsApp.colorPrimari,
              width: 2,
            ),
            shape: CircleBorder(),
            value: valorCheckbox,
            checkColor: ColorsApp.fondo, 
            onChanged: (valor) {
              setState(() {
                valorCheckbox = valor ?? false;
              });
            },
            ),
            Text(widget.valorText +" - Tasca a fer",
             style: TextStyle(
              color: ColorsApp.colorTextPrincipal,
              fontSize: 16,
              fontWeight: FontWeight.bold
             ),),
        ],),
    );
  }
}