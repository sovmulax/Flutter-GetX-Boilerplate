import 'package:flutter/material.dart';
import 'package:templax/core/theme/app_text_styles.dart';
import 'package:templax/core/theme/theme_constants.dart';

ThemeData CustomThemeData(BuildContext context) {
  final theme = CustomTheme.of(context);
  return ThemeData(
    primarySwatch: Colors.green,
    primaryColor: theme.primaryColor,
    scaffoldBackgroundColor: theme.primaryBackground,
    appBarTheme: AppBarTheme(
      backgroundColor: theme.secondaryBackground,
      foregroundColor: theme.primaryText,
      elevation: 0,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: theme.primaryColor,
      brightness: Brightness.light,
    ),
    useMaterial3: true,
  );
}

abstract class CustomTheme {
  static CustomTheme of(BuildContext context) => ColorsTheme();

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color error;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  // Additional minimalist colors
  late Color cardBackground;
  late Color borderColor;
  late Color shadowColor;

  // Typography getters using optimized text styles
  String get title1Family => AppFonts.primary;
  TextStyle get title1 => AppTextStyles.title1;
  String get title2Family => AppFonts.primary;
  TextStyle get title2 => AppTextStyles.title2;
  String get title3Family => AppFonts.primary;
  TextStyle get title3 => AppTextStyles.title3;
  String get subtitle1Family => AppFonts.primary;
  TextStyle get subtitle1 => AppTextStyles.subtitle1;
  String get subtitle2Family => AppFonts.primary;
  TextStyle get subtitle2 => AppTextStyles.subtitle2;
  String get bodyText1Family => AppFonts.primary;
  TextStyle get bodyText1 => AppTextStyles.bodyText1;
  String get bodyText2Family => AppFonts.primary;
  TextStyle get bodyText2 => AppTextStyles.bodyText2;

  Typography get typography => ThemeTypography(this);
}

class ColorsTheme extends CustomTheme {
  @override
  Color primaryColor = AppColors.primaryColor;
  @override
  Color secondaryColor = AppColors.secondaryColor;
  @override
  Color tertiaryColor = AppColors.tertiaryColor;
  @override
  Color alternate = AppColors.alternate;
  @override
  Color error = AppColors.error;
  @override
  Color primaryBackground = AppColors.primaryBackground;
  @override
  Color secondaryBackground = AppColors.secondaryBackground;
  @override
  Color primaryText = AppColors.primaryText;
  @override
  Color secondaryText = AppColors.secondaryText;
  @override
  Color cardBackground = AppColors.cardBackground;
  @override
  Color borderColor = AppColors.borderColor;
  @override
  Color shadowColor = AppColors.shadowColor;
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

  final CustomTheme theme;

  @override
  String get title1Family => AppFonts.primary;
  @override
  TextStyle get title1 => AppTextStyles.title1;

  @override
  String get title2Family => AppFonts.primary;
  @override
  TextStyle get title2 => AppTextStyles.title2;

  @override
  String get title3Family => AppFonts.primary;
  @override
  TextStyle get title3 => AppTextStyles.title3;

  @override
  String get subtitle1Family => AppFonts.primary;
  @override
  TextStyle get subtitle1 => AppTextStyles.subtitle1;

  @override
  String get subtitle2Family => AppFonts.primary;
  @override
  TextStyle get subtitle2 => AppTextStyles.subtitle2;

  @override
  String get bodyText1Family => AppFonts.primary;
  @override
  TextStyle get bodyText1 => AppTextStyles.bodyText1;

  @override
  String get bodyText2Family => AppFonts.primary;
  @override
  TextStyle get bodyText2 => AppTextStyles.bodyText2;
}

/// Enhanced theme utilities
class AppTheme {
  /// Get theme instance with context
  static CustomTheme of(BuildContext context) => CustomTheme.of(context);

  /// Quick access to colors
  static ColorsTheme get colors => ColorsTheme();

  /// Quick access to text styles
  static AppTextStyles get textStyles => AppTextStyles();

  /// Minimalist card decoration
  static BoxDecoration cardDecoration(BuildContext context) {
    final theme = CustomTheme.of(context);
    return BoxDecoration(
      color: theme.cardBackground,
      borderRadius: BorderRadius.circular(AppBorderRadius.medium),
      border: Border.all(color: theme.borderColor, width: 1),
      boxShadow: [
        BoxShadow(
          color: theme.shadowColor,
          offset: const Offset(0, 2),
          blurRadius: 4,
          spreadRadius: 0,
        ),
      ],
    );
  }

  /// Minimalist button decoration
  static BoxDecoration buttonDecoration(
    BuildContext context, {
    bool isPrimary = true,
  }) {
    final theme = CustomTheme.of(context);
    return BoxDecoration(
      color: isPrimary ? theme.primaryColor : theme.secondaryBackground,
      borderRadius: BorderRadius.circular(AppBorderRadius.medium),
      border: isPrimary ? null : Border.all(color: theme.borderColor, width: 1),
    );
  }
}

// Export the optimized text style extension
