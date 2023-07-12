part of 'rover_gallery_cubit.dart';

enum RoverGalleryPhase { initial, loading, error, completed, noInternet }

@freezed
class RoverGalleryState with _$RoverGalleryState {
  const factory RoverGalleryState({
    required RoverGalleryPhase phase,
    required List<String> gallery,
    required bool apiDataFetched,
    required FailureModel failure,
  }) = _RoverGalleryState;

  factory RoverGalleryState.empty() => RoverGalleryState(
        phase: RoverGalleryPhase.initial,
        gallery: [],
        apiDataFetched: false,
        failure: FailureModel.empty(),
      );
}
