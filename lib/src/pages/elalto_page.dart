import 'package:flutter/material.dart';
import 'package:puntos_panda/src/providers/menu_provider.dart';
import 'package:puntos_panda/src/utils/listaPuntos_util.dart';
import 'package:puntos_panda/src/widgets/instructions_text.dart';

class ElAltoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text('Puntos El Alto'),
      ),
      body: Column(
        children: <Widget>[
          InstructionsText(),
          Expanded(child: _lista())
        ],
      )
    );
  }

  Widget _lista() {

    return FutureBuilder(
      initialData: [],
      future: menuProvider.cargarData(),
      builder: ((BuildContext context, AsyncSnapshot<List<dynamic>> snapshot ) {

        return ListView(
          children: getListaPuntos( snapshot.data, 'El Alto'),
        );

      })
    );

  }

}