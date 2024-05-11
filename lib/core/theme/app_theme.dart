import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData CustomThemeData(BuildContext context) {
  return ThemeData(
      splashColor: const Color(0xFF387BF6),
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: Color(0xffA2A8B5)),
      primaryColor: const Color(0xFF387BF6),
      brightness: Brightness.light,
      focusColor: const Color(0xFF387BF6),
      hintColor: const Color(0xFF000000),
      colorScheme: const ColorScheme.light(
          primary: Color(0xFF387BF6), secondary: Color(0xFF8BAEEF)));
}

abstract class AppTheme {
  static AppTheme of(BuildContext context) => ColorsTheme();

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color card;
  late Color error;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;
  late Color formColor;

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

  String get bodyText3Family => typography.bodyText3Family;
  TextStyle get bodyText3 => typography.bodyText3;

  String get bodyText4Family => typography.bodyText4Family;
  TextStyle get bodyText4 => typography.bodyText4;

  Typography get typography => ThemeTypography(this);
}

class ColorsTheme extends AppTheme {
  late Color primaryColor = const Color(0xFF387BF6);
  late Color secondaryColor = const Color(0xFF8BAEEF);
  late Color tertiaryColor = const Color(0xFFE4E4E4);
  late Color formColor = const Color(0xFFA7AAB4);
  late Color card = const Color(0xFFE4EDFE);

  late Color error = const Color(0xFFF13828);

  late Color primaryBackground = const Color(0xFFF5F8FF);
  late Color secondaryBackground = const Color(0xFFDEE1E9);

  late Color primaryText = const Color(0xFF000000);
  late Color secondaryText = const Color(0xFF387BF6);
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
  String get bodyText3Family;
  TextStyle get bodyText3;
  String get bodyText4Family;
  TextStyle get bodyText4;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final AppTheme theme;

  String get title1Family => 'Lato';
  TextStyle get title1 => GoogleFonts.getFont(
        'Lato',
        color: const Color(0xFF000000),
        fontWeight: FontWeight.bold,
        fontSize: 40,
      );

  String get title2Family => 'Lato';
  TextStyle get title2 => GoogleFonts.getFont(
        'Lato',
        color: const Color(0xFF000000),
        fontWeight: FontWeight.bold,
        fontSize: 24,
      );

  String get title3Family => 'Lato';
  TextStyle get title3 => GoogleFonts.getFont(
        'Lato',
        color: const Color(0xFF000000),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      );

  String get subtitle1Family => 'Lato';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Lato',
        color: const Color(0xFF387BF6),
        fontWeight: FontWeight.w300,
        fontSize: 16,
      );
  String get subtitle2Family => 'Lato';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Lato',
        color: const Color(0xFF888888),
        fontWeight: FontWeight.bold,
        fontSize: 13,
      );

  String get bodyText1Family => 'Lato';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Lato',
        color: const Color(0xFFFFFFFF),
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  String get bodyText2Family => 'Lato';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Lato',
        color: const Color(0xFFFFFFFF),
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  String get bodyText3Family => 'Lato';
  TextStyle get bodyText3 => GoogleFonts.getFont(
        'Lato',
        color: const Color(0xFF000000),
        fontWeight: FontWeight.normal,
        fontSize: 13,
      );
  String get bodyText4Family => 'Lato';
  TextStyle get bodyText4 => GoogleFonts.getFont(
        'Lato',
        color: const Color(0xFFA7AAB4),
        fontWeight: FontWeight.normal,
        fontSize: 13,
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
