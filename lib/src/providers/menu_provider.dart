import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class _MenuProvider {

  List<dynamic> ciudades = [];

  _MenuProvider() {
    // Para crear un objeto
  }

  Future<List<dynamic>> cargarData() async {

    final String resp =  await rootBundle.loadString('data/menu_opts.json');

    print('RESP');
    print(resp);

    Map dataMap = json.decode( resp );

    ciudades = dataMap['puntos'];

    print('DATAMAP');
    print(dataMap);

    print('CIUDADES');
    print( ciudades.length );

    return ciudades;

  }
}

final menuProvider = _MenuProvider();