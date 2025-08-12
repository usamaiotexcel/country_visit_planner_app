import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
  primarySwatch: Colors.green,
  primaryColor: Colors.blue.shade800,
  secondaryHeaderColor: const Color(0xFF5eb67e),
  primaryColorDark: const Color(0xFF087f23),
  scaffoldBackgroundColor: Colors.white, // 🔹 White background for all screens
  hintColor: const Color(0xFF343A40),

  appBarTheme: const AppBarTheme(
    foregroundColor: Colors.black,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    elevation: 0,
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Color(0xFF4caf50), // Button background
    ),
  ),

  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Colors.green,
    selectionHandleColor: Colors.green,
  ),

  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: Colors.black, // Text default color
    displayColor: Colors.black,
  ),

  inputDecorationTheme: const InputDecorationTheme(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green),
    ),
  ),

  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.green,
  ).copyWith(secondary: const Color(0xFF5eb67e)),
);
