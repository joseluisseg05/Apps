//manejo del menu 
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider{

  List<dynamic> opciones = [];

  _MenuProvider(){
    cargarData();
  }

  Future<List<dynamic>> cargarData() async {//retorna la informacion 
    final resp = await rootBundle.loadString('data/opciones.json');
    //print(data);
    Map dataMap= json.decode(resp);//covertir json a map
    //print(dataMap['datagp']);//las rutas son las paginas a donde ir 
    opciones = dataMap['datagp']; //asisgnar las rutas a la lista de opciiones 
  
    return opciones;
  }
}

final menuProvider = new _MenuProvider();