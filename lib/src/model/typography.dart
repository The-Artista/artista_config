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
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    required this.letterSpacing,
    required this.lineHeight,
  });

  final String fontFamily;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final double lineHeight;
  final double letterSpacing;
}

class TypographySize {
  TypographySize({
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

  double? displayLarge;
  double? displayMedium;
  double? displaySmall;
  double? headlineLarge;
  double? headlineMedium;
  double? headlineSmall;

  double? titleLarge;
  double? titleMedium;

  double? titleSmall;

  double? labelLarge;

  double? labelMedium;

  double? labelSmall;

  double? bodyLarge;

  double? bodyMedium;

  double? bodySmall;
}

class TypograpyConfig {
  TypograpyConfig({
    this.fontRatio = 1.125,
    this.lineHeightRatio = 1.5,
    this.fontFamily = 'Roboto',
    this.fontColor = Colors.black,
    this.baseFont = 14
  }) {
    final ratio = this.fontRatio ?? 1.125;
    final base = this.baseFont ?? 14;
    final size = TypographySize(
      labelSmall: ((base / ratio) / ratio).roundToDouble(),
      bodySmall: (base / ratio).roundToDouble(),
      labelMedium: (base * ratio).roundToDouble(),
      bodyMedium: base.roundToDouble(),
      labelLarge: base.roundToDouble(),
      bodyLarge: (base * ratio).roundToDouble(),
      titleSmall: (base * ratio).roundToDouble(),
      titleMedium: ((base * ratio) * ratio).roundToDouble(),
      titleLarge: (((base * ratio) * ratio) * ratio).roundToDouble(),
      headlineSmall: ((((base * ratio) * ratio) * ratio)*ratio).roundToDouble(),
      headlineMedium: (((((base * ratio) * ratio) * ratio)*ratio)*ratio).roundToDouble(),
      headlineLarge: ((((((base * ratio) * ratio) * ratio)*ratio)*ratio)*ratio).roundToDouble(),
      displaySmall: (((((((base * ratio) * ratio) * ratio)*ratio)*ratio)*ratio)*ratio).roundToDouble(),
      displayMedium: ((((((((base * ratio) * ratio) * ratio)*ratio)*ratio)*ratio)*ratio)*ratio).roundToDouble(),
      displayLarge: (((((((((base * ratio) * ratio) * ratio)*ratio)*ratio)*ratio)*ratio)*ratio)*ratio).roundToDouble(),
    );
    this.typographyRole = TypographyRole(
      bodySmall: TypographyRoleProperty(
          fontFamily: this.fontFamily ?? 'Roboto',
          color: this.fontColor ?? Colors.black,
          fontSize: size.bodySmall!,
          fontWeight: FontWeight.w400,
          lineHeight: 1.618,
          letterSpacing: 1),
      bodyMedium: TypographyRoleProperty(
          fontFamily: this.fontFamily ?? 'Roboto',
          color: this.fontColor ?? Colors.black,
          fontSize: size.bodyMedium!,
          fontWeight: FontWeight.w400,
          lineHeight: 1.618,
          letterSpacing: .75),
      bodyLarge: TypographyRoleProperty(
          fontFamily: this.fontFamily ?? 'Roboto',
          color: this.fontColor ?? Colors.black,
          fontSize: size.bodyLarge!,
          fontWeight: FontWeight.w400,
          lineHeight: 1.618,
          letterSpacing: .75),
      labelSmall: TypographyRoleProperty(
        fontFamily: this.fontFamily ?? 'Roboto',
        color: this.fontColor ?? Colors.black,
        fontSize: size.labelSmall!,
        fontWeight: FontWeight.w500,
        lineHeight: 1.618,
        letterSpacing: .75,
      ),
      labelMedium: TypographyRoleProperty(
        fontFamily: this.fontFamily ?? 'Roboto',
        color: this.fontColor ?? Colors.black,
        fontSize: size.labelMedium!,
        fontWeight: FontWeight.w500,
        lineHeight: 1.618,
        letterSpacing: .75,
      ),
      labelLarge: TypographyRoleProperty(
        fontFamily: this.fontFamily ?? 'Roboto',
        color: this.fontColor ?? Colors.black,
        fontSize: size.labelLarge!,
        fontWeight: FontWeight.w500,
        lineHeight: 1.618,
        letterSpacing: .75,
      ),
      titleSmall: TypographyRoleProperty(
        fontFamily: this.fontFamily ?? 'Roboto',
        color: this.fontColor ?? Colors.black,
        fontSize: size.titleSmall!,
        fontWeight: FontWeight.w500,
        lineHeight: 1.618,
        letterSpacing: .75,
      ),
      titleMedium: TypographyRoleProperty(
        fontFamily: this.fontFamily ?? 'Roboto',
        color: this.fontColor ?? Colors.black,
        fontSize: size.titleMedium!,
        fontWeight: FontWeight.w500,
        lineHeight: 1.618,
        letterSpacing: .75,
      ),
      titleLarge: TypographyRoleProperty(
        fontFamily: this.fontFamily ?? 'Roboto',
        color: this.fontColor ?? Colors.black,
        fontSize: size.titleLarge!,
        fontWeight: FontWeight.w500,
        lineHeight: 1.618,
        letterSpacing: .75,
      ),
      headlineSmall: TypographyRoleProperty(
        fontFamily: this.fontFamily ?? 'Roboto',
        color: this.fontColor ?? Colors.black,
        fontSize: size.headlineSmall!,
        fontWeight: FontWeight.w500,
        lineHeight: 1.618,
        letterSpacing: .75,
      ),
      headlineMedium: TypographyRoleProperty(
        fontFamily: this.fontFamily ?? 'Roboto',
        color: this.fontColor ?? Colors.black,
        fontSize: size.headlineMedium!,
        fontWeight: FontWeight.w500,
        lineHeight: 1.618,
        letterSpacing: .75,
      ),
      headlineLarge: TypographyRoleProperty(
        fontFamily: this.fontFamily ?? 'Roboto',
        color: this.fontColor ?? Colors.black,
        fontSize: size.headlineLarge!,
        fontWeight: FontWeight.w500,
        lineHeight: 1.618,
        letterSpacing: .75,
      ),
      displaySmall: TypographyRoleProperty(
        fontFamily: this.fontFamily ?? 'Roboto',
        color: this.fontColor ?? Colors.black,
        fontSize: size.displaySmall!,
        fontWeight: FontWeight.w500,
        lineHeight: 1.618,
        letterSpacing: .75,
      ),
      displayMedium: TypographyRoleProperty(
        fontFamily: this.fontFamily ?? 'Roboto',
        color: this.fontColor ?? Colors.black,
        fontSize: size.displayMedium!,
        fontWeight: FontWeight.w500,
        lineHeight: 1.618,
        letterSpacing: .75,
      ),
      displayLarge: TypographyRoleProperty(
        fontFamily: this.fontFamily ?? 'Roboto',
        color: this.fontColor ?? Colors.black,
        fontSize: size.displayLarge!,
        fontWeight: FontWeight.w500,
        lineHeight: 1.618,
        letterSpacing: .75,
      ),
    );
  }

  double? fontRatio;
  double? lineHeightRatio;
  double? baseFont;
  String? fontFamily;
  Color? fontColor;
  TypographyRole? typographyRole;
}
