import 'package:flutter/material.dart';
//Rutas
import 'package:puntos_panda/src/pages/cochabamba_page.dart';
import 'package:puntos_panda/src/pages/elalto_page.dart';
import 'package:puntos_panda/src/pages/lapaz_page.dart';
import 'package:puntos_panda/src/pages/addpunto_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {

    'lapaz'     : (BuildContext context) => LaPazPage(),
    'elalto'    : (BuildContext context) => ElAltoPage(),
    'cochabamba': (BuildContext context) => CochabambaPage(),
    'addpunto'   : (BuildContext context) => AddPunto()

  };

}