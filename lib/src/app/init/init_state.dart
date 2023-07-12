

part of 'init_manager_cubit.dart';

@freezed
class InitState  with _$InitState{
  const factory InitState ({
    required InitPhase phase,
    required String message,
    required int completed,
    required int total,
    required bool closeAppInError,
  }) = _InitState;

  factory InitState.empty() => const InitState(
    phase: InitPhase.initial,
    message: '',
    total: 0,
    completed: 0,
    closeAppInError: false,
  );
}
