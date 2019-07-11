import 'package:flutter/material.dart';

class AnimatedListTile extends StatefulWidget {
  
  String _lugar;
  String _ubicacion;

  AnimatedListTile(this._lugar, this._ubicacion);
  
  @override
  _AnimatedListTileState createState() => _AnimatedListTileState();
}

class _AnimatedListTileState extends State<AnimatedListTile> {
  
  bool _isPressed = false;
  
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
        elevation: 5.0,
        child: Column(
          children: <Widget>[
            ListTile(
              onTap: pressTile,
              title: Text( widget._lugar ),
              subtitle: Text( widget._ubicacion ),
            ),
            _createContainer()
          ],
        )
    );
  }

  Widget _createContainer() {

    double _containerHeight;

    if( _isPressed ) _containerHeight = 200.0;
    else _containerHeight = 0.0;
     
      return InkWell(
          child: AnimatedContainer(
          curve: Curves.bounceOut,
          duration: Duration( milliseconds: 800 ),
          width: double.infinity,
          height: _containerHeight,
          color: Theme.of(context).primaryColor,
        ),
        onTap: pressTile,
      );
  }

  void pressTile() {

    setState(() {
      _isPressed = !_isPressed;
    });

  }

}