

import 'package:flutter/material.dart';
import 'package:mobile_project/resources/color_palette.dart';

class AppTheme{
  AppTheme._();

  static final TextTheme _textTheme = TextTheme();

  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorPalette.primaryL,
    primaryColorDark: ColorPalette.primaryDarkL,
    primaryColorLight: ColorPalette.primaryLightL
  );

}