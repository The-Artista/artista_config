import 'package:artista_config/src/utils/color.dart';
import 'package:flutter/material.dart';

class ArtistaColorModel {
  ArtistaColorModel({
    this.primary,
    this.warning,
    this.danger,
    this.success,
    this.info,
    this.disable,
    this.secondary,
    this.text,
  }) {
    primary = createMaterialColor(primary ?? Color(0xFF097D5D));
    warning = createMaterialColor(warning ?? Color(0xFFF39F1D));
    danger = createMaterialColor(danger ?? Color(0xFFD40022));
    success = createMaterialColor(success ?? Color(0xFF37AD57));
    info = createMaterialColor(info ?? Color(0xFF0758CE));
    disable = createMaterialColor(disable ?? Color(0xFFE5E6EA));
    secondary = createMaterialColor(secondary ?? Colors.white);
    text = createMaterialColor(text ?? Color(0xFF2D2D2D));
  }

  MaterialColor? primary;
  MaterialColor? warning;
  MaterialColor? danger;
  MaterialColor? success;
  MaterialColor? info;
  MaterialColor? disable;
  MaterialColor? secondary;
  MaterialColor? text;
}
