import 'package:creativefabrica/env/env.dart';
import 'package:flutter/services.dart';

import '../init_phase.dart';
import 'base_task_cubit.dart';

class InitConfigFileCheckTaskCubit extends BaseTaskCubit {
  @override
  Future<void> doWork() async {
    try {
      final data = await rootBundle.loadString(Env.shared.configFileLocation);
      Future.delayed(const Duration(milliseconds: 10), () {
        emit(
          state.copyWith(phase: InitPhase.completed),
        );
      });
    } on Exception {
      Future.delayed(const Duration(milliseconds: 10), () {
        emit(
          state.copyWith(
            phase: InitPhase.error,
            message: 'Env Config file not present in assets',
          ),
        );
      });
    }
  }
}
