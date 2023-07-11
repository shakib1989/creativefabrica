import 'package:flutter/material.dart';
import 'package:styles/constants/style_dimens.dart';

import '../theme/theme_texts.dart';

class ThemeInputDecorations {
  static ThemeInputDecorations shared = ThemeInputDecorations._();

  ThemeInputDecorations._();

  TextStyle? getTextValueStyle(BuildContext context) {
    final valueStyle = Theme.of(context).textTheme.labelSmall?.copyWith(
          color: Theme.of(context).colorScheme.onSurfaceVariant,
          fontWeight: FontWeight.w600,
        );
    return valueStyle;
  }

  InputDecoration none(BuildContext context) {
    final color = Theme.of(context).colorScheme.surfaceVariant;
    final hintColor = Theme.of(context).colorScheme.tertiary;
    final hintStyle = Theme.of(context).textTheme.labelSmall?.copyWith(
          color: hintColor,
        );
    return InputDecoration(
      filled: true,
      hintStyle: hintStyle,
      fillColor: color,
      focusColor: color,
      hoverColor: color,
      border: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 0,
          color: Colors.transparent,
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.circular(0),
      ),
    );
  }

  InputDecoration textField(
    BuildContext context, {
    String hintText = '',
    String? errorText,
    Widget? prefix,
    Widget? prefixIcon,
    Widget? suffix,
    Widget? suffixIcon,
    String? labelText,
  }) {
    final color = Theme.of(context).colorScheme.surfaceVariant;
    final errorColor = Theme.of(context).colorScheme.error;
    final hintColor = Theme.of(context).colorScheme.tertiary;
    final hintStyle = Theme.of(context).textTheme.labelSmall?.copyWith(
          color: hintColor,
          fontWeight: FontWeight.w600,
        );
    final label = (labelText != null)
        ? ThemeTexts.onSurfaceVariant
            .labelSmall(context: context, text: labelText!)
        : null;

    final genericBorder = _defaultOutlineBorder(
      Theme.of(context).colorScheme.onSurfaceVariant,
    );

    return InputDecoration(
      hintText: hintText,
      helperStyle: hintStyle,
      labelStyle: hintStyle,
      label: label,
      filled: true,
      fillColor: color,
      focusColor: color,
      hoverColor: color,
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: errorColor,
        ),
        borderRadius: BorderRadius.circular(StyleDimens.roundedCornerRadius),
      ),
      prefix: prefix,
      prefixIcon: prefixIcon,
      suffix: suffix,
      suffixIcon: suffixIcon,
      border: genericBorder,
      enabledBorder: genericBorder,
      disabledBorder: _noOutlineBorder,
    );
  }

  OutlineInputBorder get _noOutlineBorder {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
        style: BorderStyle.none,
        width: 0,
      ),
      borderRadius: BorderRadius.circular(StyleDimens.roundedCornerRadius),
    );
  }

  OutlineInputBorder _defaultOutlineBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        style: BorderStyle.solid,
        width: StyleDimens.borderWidth,
      ),
      borderRadius: BorderRadius.circular(StyleDimens.roundedCornerRadius),
    );
  }
}
