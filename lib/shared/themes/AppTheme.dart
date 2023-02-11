import 'package:flutter/material.dart';

import 'ColorsTheme.dart';
import 'TextTheme.dart';

class AppTheme {
  final ThemeData themeData = ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.light,
    primaryTextTheme: textTheme,
    // primaryColorLight: ColorTheme.secondary,
    primarySwatch: ColorTheme.secondary,
    primaryColor: ColorTheme.secondary,
    splashColor: ColorTheme.blue,
    // backgroundColor: ColorTheme.primary,
    // bottomAppBarColor: ColorTheme.secondary,
    // shadowColor: ColorTheme.secondary,
    // buttonTheme: ButtonThemeData(
    //   buttonColor: Colors.deepPurple, //  <-- dark color
    //   textTheme:
    //       ButtonTextTheme.accent, //  <-- this auto selects the right color
    // ),
    // floatingActionButtonTheme: ColorTheme.secondary,

    // Define the default font family.
    fontFamily: "Montserrat",

    // Define the default `TextTheme`. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: textTheme,
  );
}
