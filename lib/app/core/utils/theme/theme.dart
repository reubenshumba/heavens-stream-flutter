
import 'package:flutter/material.dart';
import 'package:state_manament_app/app/core/utils/theme/common_themes/bottom_sheet_theme.dart';
import 'package:state_manament_app/app/core/utils/theme/common_themes/checkbox_theme.dart';
import 'package:state_manament_app/app/core/utils/theme/common_themes/chips_theme.dart';

import 'common_themes/appbar_theme.dart';
import 'common_themes/elevated_button_theme.dart';
import 'common_themes/text_theme.dart';
class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme =ThemeData(
      useMaterial3: true,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
    primaryColor: const Color(0xFFB74F04),
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetThemeData,
    checkboxTheme: TCheckboxTheme.lightCheckboxThemeData,
    chipTheme: TChipTheme.lightChipTheme
  );

  static ThemeData darkTheme =ThemeData(
      useMaterial3: true,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      primaryColor: const Color(0xFFB74F04),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetThemeData,
      checkboxTheme: TCheckboxTheme.darkCheckboxThemeData,
    chipTheme: TChipTheme.darkChipTheme
  );
}