

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_project/resources/color_palette.dart';

class AppTheme{
  AppTheme._();

  static final TextTheme _textTheme = TextTheme();

  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorPalette.primaryL,
    primaryColorDark: ColorPalette.primaryDarkL,
    primaryColorLight: ColorPalette.primaryLightL,
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 11.sp,
          color: ColorPalette.primaryDarkL,
          fontWeight: FontWeight.w500
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
            color: Color(0xFFD0CAF9),
            width: 1.5
        ),
      ),

      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
            color: Color(0xFFD0CAF9),
            width: 1.5
        ),
      ),
    ),

  );

}