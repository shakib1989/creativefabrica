// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rover_gallery_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoverGalleryState {
  RoverGalleryPhase get phase => throw _privateConstructorUsedError;
  List<String> get gallery => throw _privateConstructorUsedError;
  bool get apiDataFetched => throw _privateConstructorUsedError;
  FailureModel get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoverGalleryStateCopyWith<RoverGalleryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoverGalleryStateCopyWith<$Res> {
  factory $RoverGalleryStateCopyWith(
          RoverGalleryState value, $Res Function(RoverGalleryState) then) =
      _$RoverGalleryStateCopyWithImpl<$Res, RoverGalleryState>;
  @useResult
  $Res call(
      {RoverGalleryPhase phase,
      List<String> gallery,
      bool apiDataFetched,
      FailureModel failure});
}

/// @nodoc
class _$RoverGalleryStateCopyWithImpl<$Res, $Val extends RoverGalleryState>
    implements $RoverGalleryStateCopyWith<$Res> {
  _$RoverGalleryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? gallery = null,
    Object? apiDataFetched = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as RoverGalleryPhase,
      gallery: null == gallery
          ? _value.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<String>,
      apiDataFetched: null == apiDataFetched
          ? _value.apiDataFetched
          : apiDataFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FailureModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoverGalleryStateCopyWith<$Res>
    implements $RoverGalleryStateCopyWith<$Res> {
  factory _$$_RoverGalleryStateCopyWith(_$_RoverGalleryState value,
          $Res Function(_$_RoverGalleryState) then) =
      __$$_RoverGalleryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RoverGalleryPhase phase,
      List<String> gallery,
      bool apiDataFetched,
      FailureModel failure});
}

/// @nodoc
class __$$_RoverGalleryStateCopyWithImpl<$Res>
    extends _$RoverGalleryStateCopyWithImpl<$Res, _$_RoverGalleryState>
    implements _$$_RoverGalleryStateCopyWith<$Res> {
  __$$_RoverGalleryStateCopyWithImpl(
      _$_RoverGalleryState _value, $Res Function(_$_RoverGalleryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? gallery = null,
    Object? apiDataFetched = null,
    Object? failure = null,
  }) {
    return _then(_$_RoverGalleryState(
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as RoverGalleryPhase,
      gallery: null == gallery
          ? _value._gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<String>,
      apiDataFetched: null == apiDataFetched
          ? _value.apiDataFetched
          : apiDataFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FailureModel,
    ));
  }
}

/// @nodoc

class _$_RoverGalleryState implements _RoverGalleryState {
  const _$_RoverGalleryState(
      {required this.phase,
      required final List<String> gallery,
      required this.apiDataFetched,
      required this.failure})
      : _gallery = gallery;

  @override
  final RoverGalleryPhase phase;
  final List<String> _gallery;
  @override
  List<String> get gallery {
    if (_gallery is EqualUnmodifiableListView) return _gallery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gallery);
  }

  @override
  final bool apiDataFetched;
  @override
  final FailureModel failure;

  @override
  String toString() {
    return 'RoverGalleryState(phase: $phase, gallery: $gallery, apiDataFetched: $apiDataFetched, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoverGalleryState &&
            (identical(other.phase, phase) || other.phase == phase) &&
            const DeepCollectionEquality().equals(other._gallery, _gallery) &&
            (identical(other.apiDataFetched, apiDataFetched) ||
                other.apiDataFetched == apiDataFetched) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phase,
      const DeepCollectionEquality().hash(_gallery), apiDataFetched, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoverGalleryStateCopyWith<_$_RoverGalleryState> get copyWith =>
      __$$_RoverGalleryStateCopyWithImpl<_$_RoverGalleryState>(
          this, _$identity);
}

abstract class _RoverGalleryState implements RoverGalleryState {
  const factory _RoverGalleryState(
      {required final RoverGalleryPhase phase,
      required final List<String> gallery,
      required final bool apiDataFetched,
      required final FailureModel failure}) = _$_RoverGalleryState;

  @override
  RoverGalleryPhase get phase;
  @override
  List<String> get gallery;
  @override
  bool get apiDataFetched;
  @override
  FailureModel get failure;
  @override
  @JsonKey(ignore: true)
  _$$_RoverGalleryStateCopyWith<_$_RoverGalleryState> get copyWith =>
      throw _privateConstructorUsedError;
}
