import 'package:app_tasques/colors_app.dart';
import 'package:app_tasques/components/item_tasca.dart';
import 'package:flutter/material.dart';

class Pantallatasquespetites extends StatelessWidget {
  const Pantallatasquespetites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.fondo,
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Tasques Petites',),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Acció del botó de configuració
            },
          ),
        ],
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: ColorsApp.colorPrimari,
            onPressed: () {
              // Acció del botó
            },
            child: Icon(Icons.add, color: Colors.red,),
            shape: CircleBorder(side: BorderSide(color: Colors.black, width: 2),),


          ),
          FloatingActionButton(
            backgroundColor: ColorsApp.colorPrimari,
            onPressed: () {
            // Acció del botó
          },
          child: Icon(Icons.remove, color: Colors.red,),
          shape: CircleBorder(side: BorderSide(color: Colors.black, width: 2),),
          ),
        ],
      ),

      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 2,
            decoration: BoxDecoration(
              color: ColorsApp.colorPrimari,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                ),
              ],
              ),
            ),

          Expanded(
            child: ListView.builder(
              itemCount: 30,
              itemBuilder:(context, index){
              return ItemTasca(valorText: index.toString(),);
            }
            ),
          ),
        ],
      ),
      
    );
  }
}