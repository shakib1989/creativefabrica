

part of 'app_config.dart';

enum AppConfigPhase { initial, loading, error, completed }

@freezed
class AppConfigState  with _$AppConfigState{
  const factory AppConfigState ({
    required AppConfigPhase appAuthPhase,
    required UserCredential? userCredential,
  }) = _AppConfigState;

  factory AppConfigState.empty() => AppConfigState(
    appAuthPhase: AppConfigPhase.initial,
    userCredential:null,
  );
}
