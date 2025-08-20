import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theme_constants.dart';

/// Optimized text style factory
class AppTextStyles {
  static final Map<String, TextStyle> _cache = {};

  /// Get cached text style to avoid repeated GoogleFonts calls
  static TextStyle _getCachedStyle({
    required String key,
    required Color color,
    required FontWeight fontWeight,
    required double fontSize,
  }) {
    if (_cache.containsKey(key)) {
      return _cache[key]!;
    }

    final style = GoogleFonts.getFont(
      AppFonts.primary,
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
    );

    _cache[key] = style;
    return style;
  }

  /// Title styles
  static TextStyle get title1 => _getCachedStyle(
        key: 'title1',
        color: AppColors.primaryText,
        fontWeight: AppFontWeights.bold,
        fontSize: AppFontSizes.title1,
      );

  static TextStyle get title2 => _getCachedStyle(
        key: 'title2',
        color: AppColors.primaryText,
        fontWeight: AppFontWeights.semiBold,
        fontSize: AppFontSizes.title2,
      );

  static TextStyle get title3 => _getCachedStyle(
        key: 'title3',
        color: AppColors.primaryText,
        fontWeight: AppFontWeights.medium,
        fontSize: AppFontSizes.title3,
      );

  /// Subtitle styles
  static TextStyle get subtitle1 => _getCachedStyle(
        key: 'subtitle1',
        color: AppColors.secondaryText,
        fontWeight: AppFontWeights.medium,
        fontSize: AppFontSizes.subtitle1,
      );

  static TextStyle get subtitle2 => _getCachedStyle(
        key: 'subtitle2',
        color: AppColors.secondaryText,
        fontWeight: AppFontWeights.regular,
        fontSize: AppFontSizes.subtitle2,
      );

  /// Body text styles
  static TextStyle get bodyText1 => _getCachedStyle(
        key: 'bodyText1',
        color: AppColors.primaryText,
        fontWeight: AppFontWeights.regular,
        fontSize: AppFontSizes.body,
      );

  static TextStyle get bodyText2 => _getCachedStyle(
        key: 'bodyText2',
        color: AppColors.primaryText,
        fontWeight: AppFontWeights.regular,
        fontSize: AppFontSizes.body,
      );

  /// Clear the cache (useful for tests or theme changes)
  static void clearCache() {
    _cache.clear();
  }
}

/// Enhanced text style extension with better caching
extension OptimizedTextStyleHelper on TextStyle {
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
  }) {
    // Create a unique key for caching
    final key = '${fontFamily ?? AppFonts.primary}_${color?.value}_'
        '${fontSize}_${fontWeight?.index}_${letterSpacing}_'
        '${fontStyle?.index}_${decoration}_$lineHeight';

    if (AppTextStyles._cache.containsKey(key)) {
      return AppTextStyles._cache[key]!;
    }

    final style = useGoogleFonts
        ? GoogleFonts.getFont(
            fontFamily ?? AppFonts.primary,
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

    AppTextStyles._cache[key] = style;
    return style;
  }
}