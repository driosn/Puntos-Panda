import 'package:flutter/material.dart';

// My Widgets
import 'package:puntos_panda/src/widgets/animated_listtile.dart';

List<Widget> getListaPuntos( List<dynamic> puntos, String ciudad ) {

    List<Widget> listaPuntos = [];

    puntos.forEach( (punto) {

      if(punto['ciudad'] == ciudad) {

        List<dynamic> ubicaciones = punto['ubicaciones'];
        print('UBICACION');

        ubicaciones.forEach( (ubicacion) {

          final widgetTemp = AnimatedListTile( ubicacion['lugar'], ubicacion['ubicacion']);
        
          listaPuntos..add( widgetTemp )
                     ..add( SizedBox( height: 10.0 ));
        
        });

      }

    });

    return listaPuntos;

  }