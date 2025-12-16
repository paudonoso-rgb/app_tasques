import 'package:app_tasks/data/tasca.dart';
import 'package:hive/hive.dart';

class RepositoriTasca {

  static const String clauLlistaTasques = 'llista_tasques';
  static const String nomBoxTasques = "BoxTasques_app_tasques";

  //Metode get.
  Box<List<dynamic>> _getBox() {
    return Hive.box<List<dynamic>>(nomBoxTasques);
  }

  Future<void> setBox(List<dynamic> llista_tasques) async {

    await _getBox().put(clauLlistaTasques, llista_tasques);
  }

  List<dynamic> getLlistaTasques() {
    return _getBox().get(clauLlistaTasques, defaultValue: <Tasca>[])!;
  }

  Future <void> afegirTasca(Tasca novaTasca) async {
    final List<dynamic> llistaTasques = getLlistaTasques();
    llistaTasques.add(novaTasca);

    await setBox(llistaTasques);
  }
  Future<void> eliminarTasca(int index) async {
    final List<dynamic> llistaTasques = getLlistaTasques();
    llistaTasques.removeAt(index);

    await setBox(llistaTasques);
  }

  Future<void> actualitzarTasca(int index, Tasca tascaActualitzada) async {
    final List<dynamic> llistaTasques = getLlistaTasques();
    llistaTasques[index] = tascaActualitzada;

    await setBox(llistaTasques);
  }
}