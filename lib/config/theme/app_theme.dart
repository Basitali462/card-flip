import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  AppTheme._();

  static final btnBgColor = Color(0xFF2DAFD7);
  static final statusTextColor = Color(0xFF8B8B8B);
  static final tierContainerColor = Color(0xFFF8F8F8);

  static final ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF00366e),
    )
  );
}