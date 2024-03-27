// ignore_for_file: overridden_fields, annotate_overrides, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData(
      splashColor: Colors.transparent,
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: Color(0xffA2A8B5)),
      primaryColor: const Color(0xff05490a),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          elevation: 0, foregroundColor: Colors.white),
      brightness: Brightness.light,
      dividerColor: const Color(0xff05490a).withOpacity(0.1),
      focusColor: const Color(0xff05490a),
      hintColor: const Color(0xff424242),
      colorScheme: const ColorScheme.light(
          primary: Color(0xff05490a), secondary: Color(0xff101B49)),
      textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme));
}

abstract class AppTheme {
  static AppTheme of(BuildContext context) => ColorsTheme();

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color error;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => ThemeTypography(this);
}

class ColorsTheme extends AppTheme {
  late Color primaryColor = const Color(0xFF19A54A);
  late Color secondaryColor = const Color(0xFF888888);
  late Color tertiaryColor = const Color(0xFF1A1E1E);

  late Color alternate = const Color(0xFF2D3039);
  late Color error = const Color(0xFFFF0000);

  late Color primaryBackground = const Color(0xFFF9FAFB);
  late Color secondaryBackground = const Color(0xFFFFFFFF);

  late Color primaryText = const Color(0xFF1A1E1E);
  late Color secondaryText = const Color(0xFF888888);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final AppTheme theme;

  String get title1Family => 'Poppins';
  TextStyle get title1 => GoogleFonts.getFont(
        'Poppins',
        color: const Color(0xFF1A1E1E),
        fontWeight: FontWeight.w700,
        fontSize: 30,
      );
  String get title2Family => 'Poppins';
  TextStyle get title2 => GoogleFonts.getFont(
        'Poppins',
        color: const Color(0xFF1A1E1E),
        fontWeight: FontWeight.w600,
        fontSize: 25,
      );
  String get title3Family => 'Poppins';
  TextStyle get title3 => GoogleFonts.getFont(
        'Poppins',
        color: const Color(0xFF1A1E1E),
        fontWeight: FontWeight.w500,
        fontSize: 22,
      );
  String get subtitle1Family => 'Poppins';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Poppins',
        color: const Color(0xFF888888),
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  String get subtitle2Family => 'Poppins';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Poppins',
        color: const Color(0xFF888888),
        fontWeight: FontWeight.normal,
        fontSize: 18,
      );
  String get bodyText1Family => 'Poppins';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Poppins',
        color: const Color(0xFF1A1E1E),
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  String get bodyText2Family => 'Poppins';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Poppins',
        color: const Color(0xFF1A1E1E),
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
