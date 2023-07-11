
import 'package:flutter/material.dart';

class StadiumButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final EdgeInsets padding;
  final Color foregroundColor;
  final Color backgroundColor;

  const StadiumButton({
    super.key,
    required this.onPressed,
    this.padding = const EdgeInsets.all(4),
    required this.foregroundColor,
    required this.backgroundColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: padding,
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        shape: const StadiumBorder(),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
