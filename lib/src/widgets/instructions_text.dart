import 'package:flutter/material.dart';

class InstructionsText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: Text(
          'Pulsa sobre alguna ubicación y Google Maps te dirá como llegar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold 
            ),
          ),
      ),
    );
  }
}