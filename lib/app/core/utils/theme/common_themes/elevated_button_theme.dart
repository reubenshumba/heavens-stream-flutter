
import 'package:flutter/material.dart';

class TElevatedButtonTheme{
  TElevatedButtonTheme._();

  static ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: const Color(0xFF50350a),
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side: const BorderSide(color: Color(0xFF50350a)),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(fontWeight: FontWeight.w600,color: Colors.white, fontSize: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
    )
  );
  static ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xFF50350a),
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: const BorderSide(color: Color(0xFF50350a)),
          padding: const EdgeInsets.symmetric(vertical: 18),
          textStyle: const TextStyle(fontWeight: FontWeight.w600,color: Colors.white, fontSize: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
      )
  );
}