import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'screen_foreground_cubit.freezed.dart';

part 'screen_foreground_state.dart';

class ScreenForegroundCubit extends Cubit<ScreenForegroundState> {
  ScreenForegroundCubit() : super(ScreenForegroundState.empty());

  Future<void> showWidget(Widget widget) async {
    final list = <Widget>[];
    list.addAll(state.overlays);
    list.add(widget);
    print('showWidget ${list.length}');
    emit(state.copyWith(
      phase: ScreenForegroundPhase.custom,
      overlays: list,
    ));
  }

  Future<void> hideDialog() async {
    final list = <Widget>[];
    list.addAll(state.overlays);

    if (list.isNotEmpty) {
      list.removeAt(list.length - 1);
    }

    emit(state.copyWith(
      phase: ScreenForegroundPhase.custom,
      overlays: list,
    ));
  }

  Future<void> hideAllDialogs() async {
    emit(state.copyWith(
      phase: ScreenForegroundPhase.custom,
      overlays: <Widget>[],
    ));
  }
}
