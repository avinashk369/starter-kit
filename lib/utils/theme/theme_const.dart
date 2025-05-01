import 'package:flutter/material.dart';

class ThemeConstants {
  // Colors
  static const Color primaryColor = Color(0xFF6200EE); // Purple
  static const Color primaryVariant = Color(0xFF3700B3);
  static const Color secondaryColor = Color(0xFF03DAC6); // Teal
  static const Color secondaryVariant = Color(0xFF018786);
  static const Color backgroundLight = Color(0xFFFFFFFF);
  static const Color backgroundDark = Color(0xFF121212);
  static const Color surfaceLight = Color(0xFFF5F5F5);
  static const Color surfaceDark = Color(0xFF1E1E1E);
  static const Color textPrimaryLight = Color(0xFF000000);
  static const Color textSecondaryLight = Color(0xFF757575);
  static const Color textPrimaryDark = Color(0xFFFFFFFF);
  static const Color textSecondaryDark = Color(0xFFB0B0B0);
  static const Color errorColor = Color(0xFFB00020);

  // Sizes
  static const double defaultPadding = 16.0;
  static const double defaultBorderRadius = 8.0;
  static const double iconSizeSmall = 20.0;
  static const double iconSizeMedium = 24.0;
  static const double iconSizeLarge = 32.0;

  // Typography
  static const TextStyle headline1 = TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.25,
  );
  static const TextStyle headline2 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.0,
  );
  static const TextStyle bodyText1 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  );
  static const TextStyle bodyText2 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25,
  );
  static const TextStyle button = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
  );
}
