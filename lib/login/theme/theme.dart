import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Colors.blueAccent,
    onPrimary: Colors.white,
    secondary:Colors.cyan ,
    onSecondary:Colors.white ,
    error: Colors.red ,
    onError: Colors.white,
    background: Colors.white,
    onBackground: Colors.black54,
    shadow: Colors.black,
    outlineVariant: Color(0xFFC2C88C),
    surface: Color(0xFFF9FAF3),
    onSurface: Color(0xFF1A1C18));


const darkColorScheme = ColorScheme(brightness: Brightness.light,
    primary: Colors.blueAccent,
    onPrimary: Colors.white,
    secondary:Colors.cyan ,
    onSecondary:Colors.white ,
    error: Colors.red ,
    onError: Colors.white,
    background: Colors.white,
    onBackground: Colors.black54,
    shadow: Colors.black,
    outlineVariant: Color(0xFFC2C88C),
    surface: Color(0xFFF9FAF3),
    onSurface: Color(0xFF1A1C18));

ThemeData lightMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: lightColorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(
        lightColorScheme.primary, // Slightly darker shade for the button
      ),
      foregroundColor:
      WidgetStateProperty.all<Color>(Colors.white), // text color
      elevation: WidgetStateProperty.all<double>(5.0), // shadow
      padding: WidgetStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 20, vertical: 18)),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // Adjust as needed
        ),
      ),
    ),
  ),
);

ThemeData darkMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: darkColorScheme,
);