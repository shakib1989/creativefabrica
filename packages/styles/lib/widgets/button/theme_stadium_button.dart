import 'package:flutter/material.dart';

import 'stadium_button.dart';

abstract class ThemeStadiumButton {
  static StadiumButton primary({
    required BuildContext context,
    EdgeInsets padding = const EdgeInsets.all(4),
    required VoidCallback onPressed,
    required Widget child,
  }) {
    return StadiumButton(
      onPressed: onPressed,
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: child,
    );
  }
  static StadiumButton error({
    required BuildContext context,
    EdgeInsets padding = const EdgeInsets.all(4),
    required VoidCallback onPressed,
    required Widget child,
  }) {
    return StadiumButton(
      onPressed: onPressed,
      foregroundColor: Theme.of(context).colorScheme.onError,
      backgroundColor: Theme.of(context).colorScheme.error,
      child: child,
    );
  }

  static StadiumButton surfaceVariant({
    required BuildContext context,
    EdgeInsets padding = const EdgeInsets.all(4),
    required VoidCallback onPressed,
    required Widget child,
  }) {
    return StadiumButton(
      onPressed: onPressed,
      foregroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
      backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
      child: child,
    );
  }
}
