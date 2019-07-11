import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  
  return ThemeData(
        primaryColor: Colors.amber,
        accentColor: Colors.amberAccent,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData( color: Colors.white ),
        ),  
        primaryTextTheme: TextTheme(
          title: TextStyle( color: Colors.white )
        )
  );

}