import 'package:flutter/material.dart';

import 'rounded_button.dart';

abstract class ThemeRoundedButton {
  static RoundedButton primary({
    required BuildContext context,
    BorderRadius? borderRadius,
    EdgeInsets padding = const EdgeInsets.all(4),
    required VoidCallback onPressed,
    required Widget child,
  }) {
    return RoundedButton(
      onPressed: onPressed,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: child,
    );
  }

  static RoundedButton surfaceVariant({
    required BuildContext context,
    BorderRadius? borderRadius,
    EdgeInsets padding = const EdgeInsets.all(4),
    required VoidCallback onPressed,
    required Widget child,
  }) {
    return RoundedButton(
      onPressed: onPressed,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      foregroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
      backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
      child: child,
    );
  }
}
