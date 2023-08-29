import 'package:flutter/material.dart';

MaterialColor _createMaterialColor(Color color) {
  final strengths = <double>[.05];
  final swatch = <int, Color>{};
  final r = color.red;
  final g = color.green;
  final b = color.blue;

  for (var i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (final strength in strengths) {
    final ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

class ArtistaColor {
  ArtistaColor();

  static MaterialColor primary = _createMaterialColor(const Color(0xFF097D5D));
  static MaterialColor warning = _createMaterialColor(const Color(0xFFF39F1D));
  static MaterialColor danger = _createMaterialColor(const Color(0xFFD40022));
  static MaterialColor success = _createMaterialColor(const Color(0xFF37AD57));
  static MaterialColor info = _createMaterialColor(const Color(0xFF0758CE));
  static MaterialColor disable = _createMaterialColor(const Color(0xFFE5E6EA));
  static MaterialColor secondary = _createMaterialColor(Colors.white);
  static MaterialColor text = _createMaterialColor(const Color(0xFF2D2D2D));

  static const backgroundColor = Color(0xFF1A1313);
  static const disableText = Color(0xFF838699);
  static const infoShade20 = Color(0xFFCEE6FC);
  
  
}

class InverseBW {
  double _calculateLuminance(List<int> rgb) {
    return 0.2126 * rgb[0] + 0.7152 * rgb[1] + 0.0722 * rgb[2];
  }

  List<int> _hexToRBG(String colorStr) {
    final rbg = <int>[
      int.parse(colorStr.substring(1, 3), radix: 16),
      int.parse(colorStr.substring(3, 5), radix: 16),
      int.parse(colorStr.substring(5, 7), radix: 16)
    ];
    return rbg;
  }

  String getInverseBW(String hexColor) {
    final luminance = _calculateLuminance(_hexToRBG(hexColor));
    final inverse = (luminance < 140) ? '#ffffff' : '#000000';
    return inverse;
  }
}
