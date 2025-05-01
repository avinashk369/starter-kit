import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneymemos/core/const/pref_const.dart';
import 'package:moneymemos/utils/prefrence_utils.dart';
import 'package:moneymemos/utils/theme/theme_const.dart';

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = false; // Default to light theme
  static bool _isInitialized = false;

  // Initialize theme asynchronously
  static Future<void> init() async {
    if (!_isInitialized) {
      _isDarkTheme = PreferenceUtils.getBool(PrefConst.themeMode);
      _isInitialized = true;
    }
  }

  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    PreferenceUtils.putBool(PrefConst.themeMode, _isDarkTheme);
    notifyListeners();
  }

  // Light theme configuration
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: ThemeConstants.primaryColor,
      primaryColorDark: ThemeConstants.primaryVariant,
      colorScheme: const ColorScheme.light(
        primary: ThemeConstants.primaryColor,
        primaryContainer: ThemeConstants.primaryVariant,
        secondary: ThemeConstants.secondaryColor,
        secondaryContainer: ThemeConstants.secondaryVariant,
        background: ThemeConstants.backgroundLight,
        surface: ThemeConstants.surfaceLight,
        onPrimary: ThemeConstants.textPrimaryLight,
        onSecondary: ThemeConstants.textPrimaryLight,
        onBackground: ThemeConstants.textPrimaryLight,
        onSurface: ThemeConstants.textPrimaryLight,
        error: ThemeConstants.errorColor,
      ),
      scaffoldBackgroundColor: ThemeConstants.backgroundLight,
      appBarTheme: const AppBarTheme(
        backgroundColor: ThemeConstants.primaryColor,
        foregroundColor: ThemeConstants.textPrimaryLight,
        elevation: 4.0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: ThemeConstants.textPrimaryLight,
          backgroundColor: ThemeConstants.primaryColor,
          padding: const EdgeInsets.symmetric(
            horizontal: ThemeConstants.defaultPadding,
            vertical: ThemeConstants.defaultPadding / 2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(ThemeConstants.defaultBorderRadius),
          ),
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: ThemeConstants.headline1,
        displayMedium: ThemeConstants.headline2,
        bodyLarge: ThemeConstants.bodyText1,
        bodyMedium: ThemeConstants.bodyText2,
        labelLarge: ThemeConstants.button,
      ),
      iconTheme: const IconThemeData(
        color: ThemeConstants.textPrimaryLight,
        size: ThemeConstants.iconSizeMedium,
      ),
      dividerTheme: const DividerThemeData(
        color: ThemeConstants.textSecondaryLight,
        thickness: 1.0,
        space: ThemeConstants.defaultPadding,
      ),
      cardTheme: CardTheme(
        color: ThemeConstants.surfaceLight,
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(ThemeConstants.defaultBorderRadius),
        ),
      ),
    );
  }

  // Dark theme configuration
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: ThemeConstants.primaryColor,
      primaryColorDark: ThemeConstants.primaryVariant,
      colorScheme: const ColorScheme.dark(
        primary: ThemeConstants.primaryColor,
        primaryContainer: ThemeConstants.primaryVariant,
        secondary: ThemeConstants.secondaryColor,
        secondaryContainer: ThemeConstants.secondaryVariant,
        background: ThemeConstants.backgroundDark,
        surface: ThemeConstants.surfaceDark,
        onPrimary: ThemeConstants.textPrimaryDark,
        onSecondary: ThemeConstants.textPrimaryDark,
        onBackground: ThemeConstants.textPrimaryDark,
        onSurface: ThemeConstants.textPrimaryDark,
        error: ThemeConstants.errorColor,
      ),
      scaffoldBackgroundColor: ThemeConstants.backgroundDark,
      appBarTheme: const AppBarTheme(
        backgroundColor: ThemeConstants.primaryColor,
        foregroundColor: ThemeConstants.textPrimaryDark,
        elevation: 4.0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: ThemeConstants.textPrimaryDark,
          backgroundColor: ThemeConstants.primaryColor,
          padding: const EdgeInsets.symmetric(
            horizontal: ThemeConstants.defaultPadding,
            vertical: ThemeConstants.defaultPadding / 2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(ThemeConstants.defaultBorderRadius),
          ),
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: ThemeConstants.headline1,
        displayMedium: ThemeConstants.headline2,
        bodyLarge: ThemeConstants.bodyText1,
        bodyMedium: ThemeConstants.bodyText2,
        labelLarge: ThemeConstants.button,
      ),
      iconTheme: const IconThemeData(
        color: ThemeConstants.textPrimaryDark,
        size: ThemeConstants.iconSizeMedium,
      ),
      dividerTheme: const DividerThemeData(
        color: ThemeConstants.textSecondaryDark,
        thickness: 1.0,
        space: ThemeConstants.defaultPadding,
      ),
      cardTheme: CardTheme(
        color: ThemeConstants.surfaceDark,
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(ThemeConstants.defaultBorderRadius),
        ),
      ),
    );
  }
}
