part of 'screen_foreground_cubit.dart';

enum ScreenForegroundPhase { none, loading, custom }

@freezed
class ScreenForegroundState with _$ScreenForegroundState {
  const factory ScreenForegroundState({
    required ScreenForegroundPhase phase,
    required List<Widget> overlays,
    required int shownCount,
    required int viewCount,
  }) = _ScreenForegroundState;

  factory ScreenForegroundState.empty() => const ScreenForegroundState(
        phase: ScreenForegroundPhase.none,
        overlays: <Widget>[],
        shownCount: 0,
        viewCount: 0,
      );
}
