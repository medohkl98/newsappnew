import 'package:flutter/material.dart';
import 'package:newsappnew/core/theme/color_palette.dart';

class AppThemeManager  {
  static ThemeData themeData =ThemeData(
    primaryColor: ColorPalette.primaryColor,
    appBarTheme: AppBarTheme( titleTextStyle: TextStyle(
        fontFamily: "Exo",
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: Colors.white
    ),
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 35,
      ) ,
      backgroundColor: ColorPalette.primaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)
          )
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
  );
}
