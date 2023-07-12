import 'package:flutter_bloc/flutter_bloc.dart';

import '../init_manager_cubit.dart';
import '../init_phase.dart';

abstract class BaseTaskCubit extends Cubit<InitState> {
  BaseTaskCubit() : super(InitState.empty());

  void run(int id) {
    final validRunState =
        state.phase == InitPhase.error || state.phase == InitPhase.initial;

    if (!validRunState) {
      return;
    }
    emit(state.copyWith(phase: InitPhase.processing, completed: id));
    doWork();
  }

  Future<void> doWork();

  Future<void> delayEmitState(InitState state) async {
    Future.delayed(const Duration(milliseconds: 10), () {
      emit(state);
    });
  }
}
