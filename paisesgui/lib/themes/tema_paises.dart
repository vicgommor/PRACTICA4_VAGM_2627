import 'package:flutter/material.dart';

ThemeData temaPaises = ThemeData(
  textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: "LeckerliOne",
        fontSize: 36,
        fontWeight: FontWeight.w100,
      ),

      displayMedium: TextStyle(
          fontWeight: FontWeight.w300,
          color: Colors.white,
          fontFamily: "LeckerliOne",
          fontSize: 40,
          shadows: [
            Shadow(offset: Offset(2, 2), color: Colors.black, blurRadius: 3),
          ]
        ),

      displaySmall: TextStyle(
          fontWeight: FontWeight.w100,
          color: Colors.white,
          fontFamily: "LeckerliOne",
          fontSize: 20,
          shadows: [
            Shadow(offset: Offset(2, 2), color: Colors.black, blurRadius: 3),
          ]
        ),   
  ),
);
