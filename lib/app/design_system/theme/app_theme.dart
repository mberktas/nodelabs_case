import 'package:flutter/material.dart';
import 'package:nodelabs_case/app/design_system/theme/app_colors.dart';

class AppTheme {
  static ThemeData get dark {
    return ThemeData.from(
      textTheme: TextTheme(
        titleLarge: TextStyle(color: AppColors.primaryForeground, fontSize: 24),
        titleMedium: TextStyle(
          color: AppColors.primaryForeground,
          fontSize: 20,
        ),
        titleSmall: TextStyle(color: AppColors.primaryForeground, fontSize: 16),
      ),
      colorScheme: ColorScheme.dark(
        surface: AppColors.primary,
        onSurface: AppColors.primaryForeground,
      ),
    );
  }

  static ThemeData get light {
    return ThemeData.from(
      colorScheme: ColorScheme.light(
        primary: Colors.blue,
        secondary: Colors.green,
      ),
    );
  }
}
