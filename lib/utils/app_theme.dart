import 'package:flutter/material.dart';
import 'package:flutter_riverpod_boilerplate/utils/app_styles.dart';

class ThemeUtils {
  ThemeUtils._();

  static ThemeData buildAppTheme(BuildContext context) {
    ThemeData theme = ThemeData();

    theme = theme.copyWith(
      appBarTheme: _appBarTheme(theme),
      elevatedButtonTheme: _elevatedButtonTheme(theme),
      outlinedButtonTheme: _outlinedButtonTheme(theme),
      textButtonTheme: _textButtonTheme(theme),
      inputDecorationTheme: _inputDecorationTheme(theme),
      tabBarTheme: _tabBarTheme(theme),
      scaffoldBackgroundColor: AppStyles.black,
    );

    return theme;
  }

  static AppBarTheme _appBarTheme(ThemeData theme) {
    return theme.appBarTheme.copyWith();
  }

  static ElevatedButtonThemeData _elevatedButtonTheme(ThemeData theme) {
    return ElevatedButtonThemeData();
  }

  static OutlinedButtonThemeData _outlinedButtonTheme(ThemeData theme) {
    return OutlinedButtonThemeData();
  }

  static TextButtonThemeData _textButtonTheme(ThemeData theme) {
    return TextButtonThemeData();
  }

  static InputDecorationTheme _inputDecorationTheme(ThemeData theme) {
    return InputDecorationTheme();
  }

  static TabBarTheme _tabBarTheme(ThemeData theme) {
    return TabBarTheme();
  }
}