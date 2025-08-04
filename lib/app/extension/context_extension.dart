import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

extension ContextExtension on BuildContext {
  ShadColorScheme get colors => ShadTheme.of(this).colorScheme;
  ShadTextTheme get textTheme => ShadTheme.of(this).textTheme;
}
