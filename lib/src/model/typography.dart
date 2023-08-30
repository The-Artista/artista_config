import 'package:flutter/material.dart';

class TypographyRole {
  TypographyRole({
    this.bodyLarge,
    this.bodyMedium,
    this.headlineSmall,
    this.bodySmall,
    this.displayLarge,
    this.displayMedium,
    this.displaySmall,
    this.headlineLarge,
    this.headlineMedium,
    this.labelLarge,
    this.labelMedium,
    this.labelSmall,
    this.titleLarge,
    this.titleMedium,
    this.titleSmall,
  }) {}

  TypographyRoleProperty? displayLarge;
  TypographyRoleProperty? displayMedium;
  TypographyRoleProperty? displaySmall;
  TypographyRoleProperty? headlineLarge;
  TypographyRoleProperty? headlineMedium;
  TypographyRoleProperty? headlineSmall;

  TypographyRoleProperty? titleLarge;
  TypographyRoleProperty? titleMedium;

  TypographyRoleProperty? titleSmall;

  TypographyRoleProperty? labelLarge;

  TypographyRoleProperty? labelMedium;

  TypographyRoleProperty? labelSmall;

  TypographyRoleProperty? bodyLarge;

  TypographyRoleProperty? bodyMedium;

  TypographyRoleProperty? bodySmall;
}

class TypographyRoleProperty {
  TypographyRoleProperty({
    required this.fontFamily,
    required this.height,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    required this.lineHeight,
  });

  final String fontFamily;
  final int fontSize;
  final double height;
  final MaterialColor color;
  final FontWeight fontWeight;
  final int lineHeight;
}

class TypograpyConfig {
  TypograpyConfig({
    this.fontRatio = 1.25,
    this.lineHeightRatio = 1.5,
    this.fontFamily = 'Roboto',
    this.fontColor = Colors.black,
  }) {
    typographyRole = TypographyRole();
  }

  double? fontRatio;
  double? lineHeightRatio;
  String? fontFamily;
  Color? fontColor;
  TypographyRole? typographyRole;
}
