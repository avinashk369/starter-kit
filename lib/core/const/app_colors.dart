import 'package:flutter/material.dart';

class AppColors {
  /// Private constructor to prevent instantiation
  AppColors._();

  /// Grayscale Colors (Light Mode)
  static const Color titleActive = Color(0xFF101010); // Black for titles
  static const Color bodyText = Color(0xFF383B52); // Dark gray for body
  static const Color buttonText = Color(0xFF5B6175); // Gray for button text
  static const Color placeholder = Color(0xFFABB0C4); // Light gray for hints
  static const Color button = Color(0xFFECEDF3); // Very light gray for buttons
  static const Color disabledInput =
      Color(0xFFF5F5F9); // Near-white for disabled

  /// Grayscale Colors (Dark Mode)
  static const Color darkBackground = Color(0xFF121212); // Dark background
  static const Color darkInput = Color(0xFF2D2D2D); // Darker gray for inputs
  static const Color darkBody = Color(0xFFBDBDBD); // Light gray for body text
  static const Color darkTitle = Color(0xFFEEEEEE); // Near-white for titles

  /// Primary Colors
  static const Color primaryLightTheme =
      Color(0xFF1565C0); // Darker blue for light mode
  static const Color primaryDarkTheme =
      Color(0xFF42A5F5); // Lighter blue for dark mode
  static const Color primaryLight = Color(0xFF90CAF9); // Light blue variant
  static const Color primaryDark = Color(0xFF0D47A1); // Very dark blue variant

  /// Secondary Colors (from gradientColors)
  static const Color secondaryLightTheme =
      Color(0xFF00BFA5); // Teal for light mode
  static const Color secondaryDarkTheme =
      Color(0xFF26A69A); // Slightly lighter teal for dark mode

  /// Success Colors
  static const Color success =
      Color(0xFF00BFA5); // Teal (matches secondaryLightTheme)
  static const Color successDark = Color(0xFF00897B); // Darker teal
  static const Color successLight = Color(0xFF80CBC4); // Light teal

  /// Error Colors
  static const Color error = Color(0xFFE91E63); // Pink-red
  static const Color errorDark = Color(0xFFB0003A); // Darker red
  static const Color errorLight = Color(0xFFF48FB1); // Light pink

  /// Warning Colors
  static const Color warning = Color(0xFFFFC107); // Amber
  static const Color warningDark = Color(0xFF8A6600); // Darker amber
  static const Color warningLight = Color(0xFFFFE082); // Light amber

  /// Additional Colors for Material Design 3
  static const Color surfaceLight =
      Color(0xFFFFFFFF); // White for light surfaces
  static const Color surfaceDark =
      Color(0xFF1E1E1E); // Dark gray for dark surfaces
  static const Color surfaceVariantLight =
      Color(0xFFF5F5F9); // Matches disabledInput
  static const Color surfaceVariantDark =
      Color(0xFF2D2D2D); // Matches darkInput
  static const Color onSurfaceVariantLight =
      Color(0xFF383B52); // Matches bodyText
  static const Color onSurfaceVariantDark =
      Color(0xFFBDBDBD); // Matches darkBody
  static const Color outlineLight = Color(0xFFECEDF3); // Matches button
  static const Color outlineDark =
      Color(0xFF616161); // Medium gray for dark mode

  /// Gradient Colors
  static const gradientColors = [
    primaryLightTheme, // 0xFF1565C0
    secondaryLightTheme, // 0xFF00BFA5
  ];

  /// Theme Color Palettes
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primaryLightTheme, // Darker blue
    onPrimary: Colors.white,
    secondary: secondaryLightTheme, // Teal
    onSecondary: Colors.white,
    error: error,
    onError: Colors.white,
    surface: surfaceLight,
    onSurface: titleActive,
    surfaceContainerHighest: surfaceVariantLight,
    onSurfaceVariant: onSurfaceVariantLight,
    outline: outlineLight,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: primaryDarkTheme, // Lighter blue
    onPrimary: Colors.white,
    secondary: secondaryDarkTheme, // Lighter teal
    onSecondary: Colors.white,
    error: error,
    onError: Colors.white,
    surface: surfaceDark,
    onSurface: darkTitle,
    surfaceContainerHighest: surfaceVariantDark,
    onSurfaceVariant: onSurfaceVariantDark,
    outline: outlineDark,
  );
}
