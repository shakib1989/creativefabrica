import 'package:core_sdk/domain/exports.dart';
import 'package:core_sdk/exports.dart';
import 'package:creativefabrica/src/utils/internet_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rover_gallery_cubit.freezed.dart';

part 'rover_gallery_state.dart';

class RoverGalleryCubit extends Cubit<RoverGalleryState> {
  RoverGalleryCubit() : super(RoverGalleryState.empty());

  Future<void> initial() async {
    if (state.phase == RoverGalleryPhase.loading) return;

    emit(state.copyWith(phase: RoverGalleryPhase.loading));
    var list = await GetRoverCuriosityPhotosLocalUseCase().call();

    if (await InternetUtils.isInternetConnected()) {
      final result = await GetRoverCuriosityPhotosUseCase().call();
      result.fold((failure) {
        emit(state.copyWith(
          phase: RoverGalleryPhase.error,
          gallery: list,
          failure: failure,
        ));
      }, (data) {
        emit(state.copyWith(
          phase: RoverGalleryPhase.completed,
          apiDataFetched: true,
          gallery: data,
        ));
      });
      return;
    } else {
      emit(state.copyWith(
        phase: RoverGalleryPhase.completed,
        gallery: list,
      ));
    }
  }

  Future<void> refresh() async {
    if (state.phase == RoverGalleryPhase.loading) return;

    emit(state.copyWith(phase: RoverGalleryPhase.loading));
    if (!await InternetUtils.isInternetConnected()) {
      emit(state.copyWith(phase: RoverGalleryPhase.noInternet));
      return;
    }
    final result = await GetRoverCuriosityPhotosUseCase().call();
    result.fold((failure) {
      emit(state.copyWith(
        phase: RoverGalleryPhase.error,
        failure: failure,
      ));
    }, (data) {
      emit(state.copyWith(
        phase: RoverGalleryPhase.completed,
        apiDataFetched: true,
        gallery: data,
      ));
    });
  }

  Future<void> resetLocal() async {
    if (state.phase == RoverGalleryPhase.loading) return;
    emit(state.copyWith(phase: RoverGalleryPhase.loading));
    var list = await GetRoverCuriosityPhotosLocalUseCase().call();
    emit(state.copyWith(
      phase: RoverGalleryPhase.completed,
      gallery: list,
    ));
  }

  Future<void> reset() async {
    emit(state.copyWith(phase: RoverGalleryPhase.initial));
  }
}
