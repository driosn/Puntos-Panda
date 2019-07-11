import 'package:flutter/material.dart';

class AddPunto extends StatefulWidget {
  @override
  _AddPuntoState createState() => _AddPuntoState();
}

class _AddPuntoState extends State<AddPunto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Añadir un punto'),
      ),
      
    );
  }
}