import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF2D5FA6);
  static const Color primaryDark = Color(0xFF1A3F7A);
  static const Color primaryLight = Color(0xFF4A7CC7);
  static const Color accent = Color(0xFF4A90D9);
  static const Color background = Color(0xFFF5F6FA);
  static const Color white = Colors.white;
  static const Color textPrimary = Color(0xFF1A1D2E);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textHint = Color(0xFFADB5BD);
  static const Color border = Color(0xFFE5E7EB);
  static const Color success = Color(0xFF22C55E);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFEF4444);
  static const Color cardBg = Colors.white;
  static const Color highRisk = Color(0xFFEF4444);
  static const Color mediumRisk = Color(0xFFF59E0B);
  static const Color lowRisk = Color(0xFF22C55E);
}

class AppTheme {
  static ThemeData get theme => ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: const ColorScheme.light(
          primary: AppColors.primary,
          secondary: AppColors.accent,
        ),
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: AppColors.textPrimary),
          titleTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
      );
}
