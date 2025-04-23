import 'package:eizo_mushi/app/theme/app_colors.dart';
import 'package:eizo_mushi/app/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      textTheme: GoogleFonts.poppinsTextTheme(
        customTextTheme,
      ),

      appBarTheme: const AppBarTheme(color: Color(0x00003B73)),
      scaffoldBackgroundColor: AppColor.screenBackgroundLight,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColor.primary,
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
      // textTheme: customTextTheme,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColor.primary,
        selectedIconTheme: IconThemeData(
          color: Colors.white,
          // size: 28,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.grey,
        ),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.red),
        unselectedLabelStyle: TextStyle(color: Colors.green, fontSize: 12),
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColor.fabBackgroundLight,
        foregroundColor: AppColor.text,
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      textTheme: GoogleFonts.poppinsTextTheme(
        darkTextTheme,
      ),
      scaffoldBackgroundColor: AppColor.screenBackgroundDark,
      appBarTheme: const AppBarTheme(
        color: Color.fromARGB(255, 16, 46, 59),
      ),
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: AppColor.primary,
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xff222222),
        selectedIconTheme: IconThemeData(
          color: Colors.white70,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.grey,
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColor.fabBackgroundLight,
        foregroundColor: AppColor.text,
      ),
    );
  }
}
