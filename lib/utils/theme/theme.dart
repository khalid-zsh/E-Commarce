import 'package:e_commarce/utils/theme/custom_themes/appbar_theme.dart';
import 'package:e_commarce/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_commarce/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_commarce/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_commarce/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commarce/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:e_commarce/utils/theme/custom_themes/text_field_theme.dart';
import 'package:e_commarce/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.LightTextTheme,
    chipTheme: TChipTheme.LightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightTAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.LightBottomSheetTheme,
    elevatedButtonTheme:TElevatedButtonTheme.LightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.LightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.LightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.DarkTextTheme,
    chipTheme: TChipTheme.DarkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TAppBarTheme.darkTAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.DarkBottomSheetTheme,
    elevatedButtonTheme:TElevatedButtonTheme.DarkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.DarkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.DarkInputDecorationTheme,
  );
}
