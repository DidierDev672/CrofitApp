import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const colorSeed = Color(0xff424CB8);
const scaffoldBackgroundColor = Color(0xFFF8F7F7);

class AppTheme {
  ThemeData getTheme() => ThemeData(

      ///* General
      useMaterial3: true,
      colorSchemeSeed: colorSeed,

      ///* Texts
      textTheme: TextTheme(
          titleLarge: GoogleFonts.inter()
              .copyWith(fontSize: 40, fontWeight: FontWeight.bold),
          titleMedium: GoogleFonts.inter()
              .copyWith(fontSize: 30, fontWeight: FontWeight.bold),
          titleSmall: GoogleFonts.inter().copyWith(fontSize: 20)),

      ///* Scaffold Background Color
      scaffoldBackgroundColor: scaffoldBackgroundColor,

      ///* Buttons
      filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
              textStyle: MaterialStatePropertyAll(
                  GoogleFonts.inter().copyWith(fontWeight: FontWeight.w700)))),

      ///* AppBar
      appBarTheme: AppBarTheme(
        color: scaffoldBackgroundColor,
        titleTextStyle: GoogleFonts.inter().copyWith(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
      ));
}
