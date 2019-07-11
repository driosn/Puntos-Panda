import 'package:flutter/material.dart';
import 'package:puntos_panda/src/pages/home_page.dart';
import 'package:puntos_panda/src/routes/routes.dart';
import 'package:puntos_panda/src/themes/themes.dart';

void main() => runApp(PuntosPanda());

class PuntosPanda extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Puntos Panda',
      home: HomePage(),
      routes: getApplicationRoutes(),
      theme: getApplicationTheme()
    );
  }
}

