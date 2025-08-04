import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

extension ContextExtension on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
  ThemeData get theme => Theme.of(this);
  ShadTextTheme get textTheme => ShadTheme.of(this).textTheme;
}
