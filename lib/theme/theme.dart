import 'package:flutter/material.dart';
import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: AppTextTheme.lightTextTheme,
    //chipTheme: ,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppbarTheme.lightAppbarTheme,
    //checkboxTheme: ,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    //outlinedButtonTheme: ,
    //inputDecorationTheme: ,
  );


  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: AppTextTheme.darkTextTheme,
    //chipTheme: ,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppbarTheme.darkAppbarTheme,
    //checkboxTheme: ,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    //outlinedButtonTheme: ,
    //inputDecorationTheme: ,
  );


}