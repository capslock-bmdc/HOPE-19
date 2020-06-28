import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeColors {
  static const PRIMATY_COLOR = const Color(0xFF40C173);
  static const ACCENT_COLOR = const Color(0xFF1E1E25);

  static const TEXT_COLOR = const Color(0xFFFFFFFF);
  static const ERROR_COLOR = const Color(0xFF9F5C58);
  static const SUCCESS_COLOR = const Color(0xFF7CB342);
  static const BACKGROUND_COLOR = const Color(0xFF2E3438);
  static const DISABLED_COLOR = const Color(0xFFD2D2D2);
}

class ThemeUtil {
  getTheme(BuildContext context) {
    return ThemeData(

      // colors
      brightness: Brightness.dark,
      primaryColor: ThemeColors.PRIMATY_COLOR,
      accentColor: ThemeColors.ACCENT_COLOR,
      cursorColor: ThemeColors.TEXT_COLOR,
      backgroundColor: ThemeColors.BACKGROUND_COLOR,
      canvasColor: ThemeColors.BACKGROUND_COLOR,
      splashColor: ThemeColors.ACCENT_COLOR.withOpacity(0.2),
      highlightColor: ThemeColors.ACCENT_COLOR.withOpacity(0.1),
      disabledColor: ThemeColors.DISABLED_COLOR,
      textSelectionHandleColor: ThemeColors.PRIMATY_COLOR,
      textSelectionColor: ThemeColors.PRIMATY_COLOR.withOpacity(0.4),

      // typography
      textTheme: GoogleFonts.stokeTextTheme(
        Theme.of(context).textTheme,
      ),
    );
  }
}

ThemeUtil themeUtil = new ThemeUtil();
