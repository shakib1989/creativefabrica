
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final Color foregroundColor;
  final Color backgroundColor;

  const RoundedButton({
    super.key,
    required this.onPressed,
    this.padding = const EdgeInsets.all(4),
    required this.foregroundColor,
    required this.backgroundColor,
    required this.borderRadius,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: padding,
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder( borderRadius: borderRadius),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
