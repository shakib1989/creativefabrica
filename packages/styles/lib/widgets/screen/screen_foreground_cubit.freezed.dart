// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'screen_foreground_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScreenForegroundState {
  ScreenForegroundPhase get phase => throw _privateConstructorUsedError;
  List<Widget> get overlays => throw _privateConstructorUsedError;
  int get shownCount => throw _privateConstructorUsedError;
  int get viewCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScreenForegroundStateCopyWith<ScreenForegroundState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenForegroundStateCopyWith<$Res> {
  factory $ScreenForegroundStateCopyWith(ScreenForegroundState value,
          $Res Function(ScreenForegroundState) then) =
      _$ScreenForegroundStateCopyWithImpl<$Res, ScreenForegroundState>;
  @useResult
  $Res call(
      {ScreenForegroundPhase phase,
      List<Widget> overlays,
      int shownCount,
      int viewCount});
}

/// @nodoc
class _$ScreenForegroundStateCopyWithImpl<$Res,
        $Val extends ScreenForegroundState>
    implements $ScreenForegroundStateCopyWith<$Res> {
  _$ScreenForegroundStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? overlays = null,
    Object? shownCount = null,
    Object? viewCount = null,
  }) {
    return _then(_value.copyWith(
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as ScreenForegroundPhase,
      overlays: null == overlays
          ? _value.overlays
          : overlays // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
      shownCount: null == shownCount
          ? _value.shownCount
          : shownCount // ignore: cast_nullable_to_non_nullable
              as int,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScreenForegroundStateCopyWith<$Res>
    implements $ScreenForegroundStateCopyWith<$Res> {
  factory _$$_ScreenForegroundStateCopyWith(_$_ScreenForegroundState value,
          $Res Function(_$_ScreenForegroundState) then) =
      __$$_ScreenForegroundStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScreenForegroundPhase phase,
      List<Widget> overlays,
      int shownCount,
      int viewCount});
}

/// @nodoc
class __$$_ScreenForegroundStateCopyWithImpl<$Res>
    extends _$ScreenForegroundStateCopyWithImpl<$Res, _$_ScreenForegroundState>
    implements _$$_ScreenForegroundStateCopyWith<$Res> {
  __$$_ScreenForegroundStateCopyWithImpl(_$_ScreenForegroundState _value,
      $Res Function(_$_ScreenForegroundState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? overlays = null,
    Object? shownCount = null,
    Object? viewCount = null,
  }) {
    return _then(_$_ScreenForegroundState(
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as ScreenForegroundPhase,
      overlays: null == overlays
          ? _value._overlays
          : overlays // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
      shownCount: null == shownCount
          ? _value.shownCount
          : shownCount // ignore: cast_nullable_to_non_nullable
              as int,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ScreenForegroundState implements _ScreenForegroundState {
  const _$_ScreenForegroundState(
      {required this.phase,
      required final List<Widget> overlays,
      required this.shownCount,
      required this.viewCount})
      : _overlays = overlays;

  @override
  final ScreenForegroundPhase phase;
  final List<Widget> _overlays;
  @override
  List<Widget> get overlays {
    if (_overlays is EqualUnmodifiableListView) return _overlays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_overlays);
  }

  @override
  final int shownCount;
  @override
  final int viewCount;

  @override
  String toString() {
    return 'ScreenForegroundState(phase: $phase, overlays: $overlays, shownCount: $shownCount, viewCount: $viewCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenForegroundState &&
            (identical(other.phase, phase) || other.phase == phase) &&
            const DeepCollectionEquality().equals(other._overlays, _overlays) &&
            (identical(other.shownCount, shownCount) ||
                other.shownCount == shownCount) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phase,
      const DeepCollectionEquality().hash(_overlays), shownCount, viewCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenForegroundStateCopyWith<_$_ScreenForegroundState> get copyWith =>
      __$$_ScreenForegroundStateCopyWithImpl<_$_ScreenForegroundState>(
          this, _$identity);
}

abstract class _ScreenForegroundState implements ScreenForegroundState {
  const factory _ScreenForegroundState(
      {required final ScreenForegroundPhase phase,
      required final List<Widget> overlays,
      required final int shownCount,
      required final int viewCount}) = _$_ScreenForegroundState;

  @override
  ScreenForegroundPhase get phase;
  @override
  List<Widget> get overlays;
  @override
  int get shownCount;
  @override
  int get viewCount;
  @override
  @JsonKey(ignore: true)
  _$$_ScreenForegroundStateCopyWith<_$_ScreenForegroundState> get copyWith =>
      throw _privateConstructorUsedError;
}
