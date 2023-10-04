import 'package:flutter/material.dart';

class CustomMaterialColorGenerator {
  static MaterialColor generateMaterialColor(Color color) {

    final int r = color.red;
    final int g = color.green;
    final int b = color.blue;

    Map<int, Color> colorSwatch = <int, Color>{};
    const int primaryValue = 0xFF000000;

    // Define the desired shade values
    final List<int> shadeValues = [50, 100, 200, 300, 400, 500, 600, 700, 800, 900];

    for (int shade in shadeValues) {
      final int shadeValue = primaryValue | (r << 16) | (g << 8) | (b) | shade;
      colorSwatch[shade] = Color(shadeValue);
    }

    return MaterialColor(color.value, colorSwatch);
  }

  static Color hexToColor(String hexColor) {
    final buffer = StringBuffer();
    if (hexColor.length == 6 || hexColor.length == 7) {
      buffer.write('ff'); // Add the alpha value if missing
    }
    buffer.write(hexColor.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
