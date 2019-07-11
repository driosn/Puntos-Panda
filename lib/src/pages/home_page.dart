import 'package:flutter/material.dart';
import 'package:puntos_panda/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Puntos Panda'),
      ),
      body: _lista(),
      floatingActionButton: addPunto(context),
    );
  }

  Widget _lista() {

    return FutureBuilder(
      initialData: [],
      future: menuProvider.cargarData(),
      builder:( BuildContext context, AsyncSnapshot<List<dynamic>> snapshot ) {

        return ListView(
          children: _listaCiudadesItems( context, snapshot.data )
        );

      } ,
    );

  }

  List<Widget> _listaCiudadesItems( BuildContext context, List<dynamic>  data ) {

    List<Widget> listaCiudades = [];

    data.forEach( (ciudad) {
      
      final widgetTemp = Card(
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
        elevation: 5.0,
        child: ListTile(
            title: Text( ciudad['ciudad'] ),
            trailing: Icon( Icons.keyboard_arrow_right ),
            onTap: () {
            Navigator.pushNamed(context, ciudad['ruta']);
          },
        )
      );

      listaCiudades..add( widgetTemp )
                   ..add( Divider() );
    });    

    return listaCiudades;

  }

  Widget addPunto(BuildContext context) {

    return FlatButton(
      color: Colors.amber,
      onPressed: () => Navigator.pushNamed(context, 'addpunto'),
      child: Text('Añadir un punto', style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold ),),
    );

  }

}