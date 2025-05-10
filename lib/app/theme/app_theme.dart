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
        primary: AppColor.primary,
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xff222222),
        selectedItemColor: AppColor.primary,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(
          size: 28,
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColor.fabBackgroundLight,
        foregroundColor: AppColor.text,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.error,
          foregroundColor: AppColor.textLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          // backgroundColor: const Color(0xffaaaaaa),
          foregroundColor: AppColor.textLight,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(50),
          // ),
        ),
      ),
    );
  }
}
