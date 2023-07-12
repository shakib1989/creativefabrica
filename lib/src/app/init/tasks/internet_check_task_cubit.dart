import 'package:creativefabrica/l10n/l10n.dart';
import 'package:creativefabrica/src/utils/context_holder.dart';
import 'package:creativefabrica/src/utils/internet_utils.dart';
import 'package:creativefabrica/styles/dialogs/turn_on_internet_dialog.dart';
import 'package:flutter/material.dart';

import '../init_phase.dart';
import 'base_task_cubit.dart';

class InternetCheckTaskCubit extends BaseTaskCubit {
  BuildContext get context => ContextHolder.currentContext;

  String get messageNoInternetConnection {
    final context = ContextHolder.currentContext;
    return AppLocalizations.of(context).noInternetConnection;
  }

  @override
  Future<void> doWork() async {
    final status = await InternetUtils.isInternetConnected();

    if (status) {
      emit(
        state.copyWith(
          phase: InitPhase.completed,
        ),
      );
    } else {
      await showInternetDialog();
    }
  }

  Future<void> showInternetDialog() async {
    await showDialog<bool>(
      context: context,
      builder: (context) {
        return TurnOnInternetDialog(
          onRetry: () async {
            Navigator.of(context).pop();
          },
        );
      },
    );
    final status = await InternetUtils.isInternetConnected();

    if (status) {
      emit(
        state.copyWith(
          phase: InitPhase.completed,
        ),
      );
    } else {
      await showInternetDialog();
    }
  }
}
