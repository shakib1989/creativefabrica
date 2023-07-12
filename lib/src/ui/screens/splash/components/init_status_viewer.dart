import 'package:creativefabrica/l10n/l10n.dart';
import 'package:creativefabrica/src/app/init/exports.dart';
import 'package:creativefabrica/src/constants/app_dimens.dart';
import 'package:creativefabrica/src/ui/screens/dashboard/dashboard_screen.dart';
import 'package:creativefabrica/styles/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:styles/constants/style_dimens.dart';
import 'package:styles/styles.dart';

import 'init_complete.dart';

class InitStatusViewer extends StatelessWidget {
  const InitStatusViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InitManagerCubit, InitState>(
      bloc: InitManagerCubit.shared,
      listener: (context, state) {
        if (state.phase == InitPhase.completed) {
          Future.delayed(const Duration(seconds: 3), () {
            DashboardScreen.navigate(context, replace: true);
          });
        }
      },
      builder: (context, state) {
        if (state.phase == InitPhase.processing) {
          return _showLoading(context);
        } else if (state.phase == InitPhase.error) {
          return _buildErrorContent(
            context,
            state.message,
            !state.closeAppInError,
          );
        } else if (state.phase == InitPhase.completed) {
          return const InitComplete();
        }
        return const SizedBox.shrink();
      },
    );
  }

  Padding _showLoading(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: AppDimens.splashTopSpacing,
      ),
      child: Center(
        child: Loading.background(context),
      ),
    );
  }

  Widget _buildErrorContent(
      BuildContext context, String message, bool showRetry) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        top: AppDimens.splashTopSpacing,
        bottom: StyleDimens.screenEdgeHeightOffset,
        left: StyleDimens.screenEdgeWidthOffset,
        right: StyleDimens.screenEdgeWidthOffset,
      ),
      padding: EdgeInsets.all(StyleDimens.screenEdgeWidthOffset),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background.withOpacity(0.4),
        borderRadius: BorderRadius.circular(StyleDimens.roundedCornerRadius),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ThemeTexts.onBackground.bodyMedium(
            context: context,
            text: message,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w600,
          ),
          if (showRetry)
            Padding(
              padding: EdgeInsets.only(top: StyleDimens.screenEdgeHeightOffset),
              child: ThemeStadiumButton.primary(
                context: context,
                onPressed: () {
                  InitManagerCubit.shared.run();
                },
                child: ThemeTexts.onPrimary.bodyMedium(
                  context: context,
                  text: context.l10n.retry,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
