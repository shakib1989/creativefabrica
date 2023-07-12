import 'package:creativefabrica/src/utils/context_holder.dart';
import 'package:flutter/material.dart';

class ErrorTextSnackBar extends SnackBar {
  ErrorTextSnackBar({
    super.key,
    required String message,
  }) : super(
          backgroundColor:
              Theme.of(ContextHolder.currentContext).colorScheme.error,
          content: Text(message),
        );
}
