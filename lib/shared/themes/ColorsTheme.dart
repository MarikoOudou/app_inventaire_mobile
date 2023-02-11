import 'dart:math';
import 'package:flutter/material.dart';

class ColorTheme {
  static MaterialColor generateMaterialColor(Color color) {
    return MaterialColor(color.value, {
      50: tintColor(color, 0.9),
      100: tintColor(color, 0.8),
      200: tintColor(color, 0.6),
      300: tintColor(color, 0.4),
      400: tintColor(color, 0.2),
      500: color,
      600: shadeColor(color, 0.1),
      700: shadeColor(color, 0.2),
      800: shadeColor(color, 0.3),
      900: shadeColor(color, 0.4),
    });
  }

  static int tintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  static Color tintColor(Color color, double factor) => Color.fromRGBO(
      tintValue(color.red, factor),
      tintValue(color.green, factor),
      tintValue(color.blue, factor),
      1);

  static int shadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  static Color shadeColor(Color color, double factor) => Color.fromRGBO(
      shadeValue(color.red, factor),
      shadeValue(color.green, factor),
      shadeValue(color.blue, factor),
      1);

  LinearGradient gradientPrimary = LinearGradient(
    colors: [Color(0xff004f71), Color(0xffffc304)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // #EBEBEB #081919
// generate colors Black
  static MaterialColor grey = generateMaterialColor(Color(0xffffEBEBEB));

  // generate colors Black
  static MaterialColor darkgreen = generateMaterialColor(Color(0xffff081919));

// generate colors Black
  static MaterialColor black = generateMaterialColor(Colors.black);

// generate colors blue // ancien blue: #004f71
  static MaterialColor blue = generateMaterialColor(Color(0xffff2E62B6));

  // generate colors white
  static MaterialColor white = generateMaterialColor(Color(0xffffffff));

// generate colors yello
  static MaterialColor yellow = generateMaterialColor(Color(0xffffc304));

  // primary color
  static MaterialColor primary = generateMaterialColor(Color(0xffffffffff));

  // secondary color
  static MaterialColor secondary = generateMaterialColor(Color(0xffff119da4));
}
