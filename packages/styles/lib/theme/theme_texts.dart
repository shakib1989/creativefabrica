import 'package:flutter/material.dart';
import 'package:styles/constants/app_colors.dart';

import 'base_theme_text.dart';

abstract class ThemeTexts {
  static BaseThemeText white = BaseThemeText(
    getColor: (context) => Colors.white,
  );

  static BaseThemeText primary = BaseThemeText(
    getColor: (context) => Theme.of(context).colorScheme.primary,
  );
  static BaseThemeText onPrimary = BaseThemeText(
    getColor: (context) => Theme.of(context).colorScheme.onPrimary,
  );

  static BaseThemeText error = BaseThemeText(
    getColor: (context) => Theme.of(context).colorScheme.error,
  );
  static BaseThemeText onError = BaseThemeText(
    getColor: (context) => Theme.of(context).colorScheme.onError,
  );

  static BaseThemeText secondary = BaseThemeText(
    getColor: (context) => Theme.of(context).colorScheme.secondary,
  );
  static BaseThemeText onSecondary = BaseThemeText(
    getColor: (context) => Theme.of(context).colorScheme.onSecondary,
  );

  static BaseThemeText tertiary = BaseThemeText(
    getColor: (context) => Theme.of(context).colorScheme.tertiary,
  );
  static BaseThemeText onTertiary = BaseThemeText(
    getColor: (context) => Theme.of(context).colorScheme.onTertiary,
  );


  static BaseThemeText background = BaseThemeText(
    getColor: (context) => Theme.of(context).colorScheme.background,
  );
  static BaseThemeText onBackground = BaseThemeText(
    getColor: (context) => Theme.of(context).colorScheme.onBackground,
  );
  static BaseThemeText surface = BaseThemeText(
    getColor: (context) => Theme.of(context).colorScheme.surface,
  );
  static BaseThemeText onSurface = BaseThemeText(
    getColor: (context) => Theme.of(context).colorScheme.onSurface,
  );
  static BaseThemeText surfaceVariant = BaseThemeText(
    getColor: (context) => Theme.of(context).colorScheme.surfaceVariant,
  );
  static BaseThemeText onSurfaceVariant = BaseThemeText(
    getColor: (context) => Theme.of(context).colorScheme.onSurfaceVariant,
  );


  // Other none theme
  static BaseThemeText darkGray = BaseThemeText(
    getColor: (context) => AppColors.darkGrey,
  );
  static BaseThemeText primaryDark = BaseThemeText(
    getColor: (context) => AppColors.primaryDark,
  );
  static BaseThemeText green = BaseThemeText(
    getColor: (context) => AppColors.green,
  );
  static BaseThemeText red = BaseThemeText(
    getColor: (context) => AppColors.red,
  );
  static BaseThemeText pink = BaseThemeText(
    getColor: (context) => AppColors.pink,
  );
}
