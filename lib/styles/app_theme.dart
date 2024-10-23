import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static final ThemeData appTheme = ThemeData(
    fontFamily: 'Lato',
    scaffoldBackgroundColor: appColors.appWhite,
    appBarTheme: AppBarTheme(
      surfaceTintColor: appColors.appWhite,
      color: appColors.appWhite,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: appColors.appBlack,
      ),
      bodyMedium: TextStyle(
        color: appColors.appBlack,
      ),
      bodySmall: TextStyle(
        color: appColors.appBlack,
      ),
      titleMedium: TextStyle(
        color: appColors.appBlack,
      ),
      titleSmall: TextStyle(
        color: appColors.appBlack,
      ),
      titleLarge: TextStyle(
        color: appColors.appBlack,
      ),
    ),
    cardTheme: CardTheme(
      color: appColors.appWhite,
      surfaceTintColor: appColors.appWhite,
    ),
    iconTheme: IconThemeData(
      color: appColors.appBlack,
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: appColors.appBlack,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        color: appColors.appGrey,
      ),
      labelStyle: TextStyle(
        color: appColors.appGrey,
      ),
      floatingLabelStyle: TextStyle(
        color: appColors.appBlack,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: appColors.appGrey,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: appColors.appBlack,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: appColors.appBlack,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: appColors.secondary,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: appColors.secondary,
        ),
      ),
    ),
  );
}
