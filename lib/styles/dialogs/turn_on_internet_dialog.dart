import 'package:creativefabrica/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:styles/constants/exports.dart';
import 'package:styles/styles.dart';

class TurnOnInternetDialog extends StatefulWidget {
  const TurnOnInternetDialog({
    super.key,
    this.onRetry,
    this.onCancel,
    this.cancelable = false,
  });

  final bool cancelable;
  final VoidCallback? onRetry;
  final VoidCallback? onCancel;

  @override
  State<StatefulWidget> createState() => _TurnOnInternetDialogState();
}

class _TurnOnInternetDialogState extends State<TurnOnInternetDialog> {
  bool showRetry = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).colorScheme.background.withOpacity(0.5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.circular(
                StyleDimens.roundedCornerRadius,
              ),
            ),
            margin: EdgeInsets.symmetric(
              horizontal: StyleDimens.screenEdgeWidthOffset,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: StyleDimens.screenEdgeWidthOffset,
              vertical: StyleDimens.screenEdgeWidthOffset,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ThemeTexts.primary.titleLarge(
                  context: context,
                  text: context.l10n.noInternet,
                  fontWeight: FontWeight.w700,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: StyleDimens.screenEdgeHeightOffset,
                  ),
                  child: ThemeTexts.onSurfaceVariant.titleSmall(
                    context: context,
                    text: context.l10n.turnOnInternet,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    if (widget.cancelable)
                      Expanded(
                        child: ThemeRoundedButton.primary(
                          context: context,
                          onPressed: () {
                            widget.onCancel?.call();
                          },
                          child: ThemeTexts.onPrimary.labelLarge(
                            context: context,
                            text: context.l10n.cancel,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    if (widget.cancelable)
                      SizedBox(width: StyleDimens.screenEdgeWidthOffset),
                    Expanded(
                      child: ThemeRoundedButton.primary(
                        context: context,
                        onPressed: () {
                          widget.onRetry?.call();
                        },
                        child: ThemeTexts.onPrimary.labelLarge(
                          context: context,
                          text: context.l10n.continueNext,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
