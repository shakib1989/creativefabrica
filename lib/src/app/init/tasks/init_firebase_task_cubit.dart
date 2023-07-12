import 'package:firebase_core/firebase_core.dart';

import '../init_phase.dart';
import 'base_task_cubit.dart';

class InitFirebaseTaskCubit extends BaseTaskCubit {
  @override
  Future<void> doWork() async {
    await Firebase.initializeApp();
    Future.delayed(const Duration(seconds: 1), () {
      emit(
        state.copyWith(
          phase: InitPhase.completed,
        ),
      );
    });
  }
}
