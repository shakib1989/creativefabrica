import 'package:creativefabrica/l10n/l10n.dart';
import 'package:creativefabrica/src/utils/context_holder.dart';
import 'package:creativefabrica/src/utils/internet_utils.dart';
import 'package:creativefabrica/styles/dialogs/turn_on_internet_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../init_phase.dart';
import 'base_task_cubit.dart';

class AutoLoginTaskCubit extends BaseTaskCubit {
  BuildContext get context => ContextHolder.currentContext;

  @override
  Future<void> doWork() async {
    if (FirebaseAuth.instance.currentUser != null) {
      Future.delayed(const Duration(milliseconds: 10), () {
        emit(state.copyWith(
          phase: InitPhase.completed,
        ));
      });
    } else {
      login();
    }
  }

  Future<void> login() async {
    final status = await InternetUtils.isInternetConnected();
    if(!status){
      await showInternetDialog();
    }

    try {
      final userCredential = await FirebaseAuth.instance.signInAnonymously();

      emit(state.copyWith(
        phase: InitPhase.completed,
      ));
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "operation-not-allowed":
          emit(state.copyWith(
            message: ContextHolder.currentContext.l10n.anonymousLoginDisabled,
            phase: InitPhase.error,
          ));
          break;
        default:
          emit(state.copyWith(
            message: ContextHolder.currentContext.l10n.unknownError,
            phase: InitPhase.error,
          ));
      }
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
     return;
    } else {
      await showInternetDialog();
    }
  }
}
