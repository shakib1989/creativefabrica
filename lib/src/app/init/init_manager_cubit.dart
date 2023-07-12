import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'init_phase.dart';
import 'tasks/base_task_cubit.dart';
import 'tasks/exports.dart';

part 'init_manager_cubit.freezed.dart';

part 'init_state.dart';

class InitManagerCubit extends Cubit<InitState> {
  InitManagerCubit._() : super(InitState.empty());
  static InitManagerCubit? _shared;
  static InitManagerCubit shared = InitManagerCubit._();

  List<List<BaseTaskCubit>> tasks = [
    [InitConfigFileCheckTaskCubit()],
    [InitCoreSdkTaskCubit()],
    [InitFirebaseTaskCubit()],
   // [InternetCheckTaskCubit()],
    [AutoLoginTaskCubit()],
    [WaitTaskCubit()],
  ];

  List<String> messages = [
    'Checking Application Resources...',
    'Initializing Core Sdk...',
    'Initializing Firebase...',
  //  'Internet Connection Check...',
    'Checking Login Status..',
    'Initializing Wait...'
  ];

  int section = 0;
  final taskAwaitList = <StreamSubscription<InitState>>[];
  int tasksLeft = 0;
  int runId = 0;

  Future<void> run() async {
    final validRunState =
        state.phase == InitPhase.error || state.phase == InitPhase.initial;

    if (!validRunState) {
      return;
    }
    emit(
      state.copyWith(
        phase: InitPhase.processing,
        message: _getSectionMessage(),
        completed: calculateComplete(),
        total: calculateTotal(),
      ),
    );
    runId = DateTime.now().millisecondsSinceEpoch;
    await runSection();
  }

  void setSuccess() {
    emit(
      state.copyWith(
        phase: InitPhase.completed,
        message: 'Initialization Complete',
        completed: calculateComplete(),
      ),
    );
  }

  Future<void> runSection() async {
    if (section >= tasks.length) {
      setSuccess();
      return;
    }

    for (var index = 0; index < tasks[section].length; index++) {
      taskAwaitList
          .add(tasks[section][index].stream.listen(waitTillAllTaskCompleted));
      tasks[section][index].run(runId);
    }
  }

  void waitTillAllTaskCompleted(InitState state) {
    var completed = true;
    for (var index = 0; completed && index < tasks[section].length; index++) {
      final phase = tasks[section][index].state.phase;
      final id = tasks[section][index].state.completed;
      if (!(phase == InitPhase.completed || phase == InitPhase.error) ||
          id != runId) {
        completed = false;
      }
    }
    if (completed) {
      processResponse();
    }
  }

  void processResponse() {
    for (final StreamSubscription task in taskAwaitList) {
      task.cancel();
    }
    taskAwaitList.clear();
    for (var index = 0; index < tasks[section].length; index++) {
      final cubitState = tasks[section][index].state;
      if (cubitState.phase == InitPhase.error) {
        emit(
          state.copyWith(
            phase: cubitState.phase,
            message: cubitState.message,
            completed: calculateComplete(),
            closeAppInError: cubitState.closeAppInError,
          ),
        );
        return;
      }
    }
    section++;
    emit(
      state.copyWith(
        message: _getSectionMessage(),
        completed: calculateComplete(),
      ),
    );
    runSection();
  }

  int calculateComplete() {
    var done = 0;

    for (var index = 0; index < tasks.length; index++) {
      for (var pos = 0; pos < tasks[index].length; pos++) {
        if (tasks[index][pos].state.phase == InitPhase.completed) {
          done++;
        }
      }
    }
    return done;
  }

  int calculateTotal() {
    var total = 0;
    for (var index = 0; index < tasks.length; index++) {
      total += tasks[index].length;
    }
    return total;
  }

  String _getSectionMessage() {
    return (messages.length > section) ? messages[section] : 'Initializing...';
  }
}
