import 'package:creativefabrica/src/utils/context_holder.dart';
import 'package:flutter/material.dart';
import 'package:styles/styles.dart';

class SuccessTextSnackBar extends SnackBar {
  SuccessTextSnackBar({
    super.key,
    required String message,
  }) : super(
          backgroundColor:
              Theme.of(ContextHolder.currentContext).colorScheme.primary,
          content: ThemeTexts.onPrimary.labelMedium(
            context: ContextHolder.currentContext,
            text: message,
          ),
        );
}
