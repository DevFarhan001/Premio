import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context)=> ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: Theme.of(context).textTheme,
    buttonColor : Colors.black,
    secondaryHeaderColor: Colors.black
  );

  static ThemeData darkTheme(BuildContext context)=> ThemeData(
    brightness: Brightness.dark,
      primarySwatch: Colors.blue,
      iconTheme: IconThemeData(color: Colors.white),
      textTheme: Theme.of(context).textTheme,
    buttonColor: Colors.white,
    secondaryHeaderColor: Colors.white
  );
}



