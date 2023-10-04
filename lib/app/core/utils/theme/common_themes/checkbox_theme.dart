
import 'package:flutter/material.dart';

class TCheckboxTheme{
  TCheckboxTheme._();

  static CheckboxThemeData lightCheckboxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateColor.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor:  MaterialStateColor.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return const Color(0xFFB74F04);
      }else{
        return Colors.transparent;
      }
    })
  );

  static CheckboxThemeData darkCheckboxThemeData = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateColor.resolveWith((states) {
        if(states.contains(MaterialState.selected)){
          return Colors.white;
        }else{
          return Colors.black;
        }
      }),
      fillColor:  MaterialStateColor.resolveWith((states) {
        if(states.contains(MaterialState.selected)){
          return const Color(0xFFB74F04);
        }else{
          return Colors.transparent;
        }
      })
  );

}