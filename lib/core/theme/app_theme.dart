import 'package:flutter/material.dart';

class AppColors {
  // Brand Colors
  static const Color primary = Color(0xFFFF5A5F);       // Coral red (like Airbnb)
  static const Color primaryLight = Color(0xFFFF8083);
  static const Color primaryDark = Color(0xFFE0373C);
  static const Color secondary = Color(0xFF00A699);     // Teal accent
  static const Color secondaryLight = Color(0xFF33BBB0);

  // Bee Colors (brand identity)
  static const Color beeYellow = Color(0xFFFFB400);
  static const Color beeYellowLight = Color(0xFFFFCC4D);

  // Neutrals
  static const Color black = Color(0xFF222222);
  static const Color darkGrey = Color(0xFF484848);
  static const Color grey = Color(0xFF767676);
  static const Color lightGrey = Color(0xFFEEEEEE);
  static const Color ultraLightGrey = Color(0xFFF7F7F7);
  static const Color white = Color(0xFFFFFFFF);

  // Semantic
  static const Color success = Color(0xFF008A05);
  static const Color warning = Color(0xFFFFB400);
  static const Color error = Color(0xFFD93025);
  static const Color info = Color(0xFF1877F2);

  // Surface
  static const Color background = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFFF7F7F7);
  static const Color divider = Color(0xFFEEEEEE);
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Nunito',
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: AppColors.surface,
        background: AppColors.background,
        error: AppColors.error,
        onPrimary: AppColors.white,
        onSecondary: AppColors.white,
        onSurface: AppColors.black,
        onBackground: AppColors.black,
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: AppColors.background,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.black,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: 'Nunito',
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: AppColors.black,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
          minimumSize: const Size(double.infinity, 52),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontFamily: 'Nunito',
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.black,
          minimumSize: const Size(double.infinity, 52),
          side: const BorderSide(color: AppColors.black, width: 1.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontFamily: 'Nunito',
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primary,
          textStyle: const TextStyle(
            fontFamily: 'Nunito',
            fontSize: 14,
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.ultraLightGrey,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.error, width: 1),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        hintStyle: const TextStyle(
          color: AppColors.grey,
          fontSize: 14,
          fontFamily: 'Nunito',
        ),
        labelStyle: const TextStyle(
          color: AppColors.grey,
          fontSize: 14,
          fontFamily: 'Nunito',
        ),
      ),
      cardTheme: CardThemeData(
        color: AppColors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedLabelStyle: TextStyle(
          fontFamily: 'Nunito',
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'Nunito',
          fontSize: 11,
          fontWeight: FontWeight.w400,
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.divider,
        thickness: 1,
        space: 0,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 32, fontWeight: FontWeight.w800, color: AppColors.black),
        displayMedium: TextStyle(
          fontSize: 28, fontWeight: FontWeight.w700, color: AppColors.black),
        displaySmall: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w700, color: AppColors.black),
        headlineLarge: TextStyle(
          fontSize: 22, fontWeight: FontWeight.w700, color: AppColors.black),
        headlineMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.black),
        headlineSmall: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.black),
        titleLarge: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.black),
        titleMedium: TextStyle(
          fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.black),
        titleSmall: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.black),
        bodyLarge: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.darkGrey),
        bodyMedium: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.darkGrey),
        bodySmall: TextStyle(
          fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.grey),
        labelLarge: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.black),
        labelMedium: TextStyle(
          fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.grey),
        labelSmall: TextStyle(
          fontSize: 11, fontWeight: FontWeight.w400, color: AppColors.grey),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Nunito',
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: const Color(0xFF1C1C1E),
        background: const Color(0xFF000000),
        error: AppColors.error,
        onPrimary: AppColors.white,
        onSecondary: AppColors.white,
        onSurface: AppColors.white,
        onBackground: AppColors.white,
        brightness: Brightness.dark,
      ),
    );
  }
}

class AppTextStyles {
  static const TextStyle sectionTitle = TextStyle(
    fontFamily: 'Nunito',
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  static const TextStyle priceTag = TextStyle(
    fontFamily: 'Nunito',
    fontSize: 18,
    fontWeight: FontWeight.w800,
    color: AppColors.black,
  );

  static const TextStyle tag = TextStyle(
    fontFamily: 'Nunito',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.grey,
  );
}