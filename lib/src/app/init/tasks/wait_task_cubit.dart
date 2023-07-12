import '../init_phase.dart';
import 'base_task_cubit.dart';

class WaitTaskCubit extends BaseTaskCubit {
  @override
  Future<void> doWork() async {
    Future.delayed(const Duration(seconds: 1), () {
      emit(
        state.copyWith(
          phase: InitPhase.completed,
        ),
      );
    });
  }
}
