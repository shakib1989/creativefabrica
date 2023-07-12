// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'init_manager_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitState {
  InitPhase get phase => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get completed => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  bool get closeAppInError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitStateCopyWith<InitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitStateCopyWith<$Res> {
  factory $InitStateCopyWith(InitState value, $Res Function(InitState) then) =
      _$InitStateCopyWithImpl<$Res, InitState>;
  @useResult
  $Res call(
      {InitPhase phase,
      String message,
      int completed,
      int total,
      bool closeAppInError});
}

/// @nodoc
class _$InitStateCopyWithImpl<$Res, $Val extends InitState>
    implements $InitStateCopyWith<$Res> {
  _$InitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? message = null,
    Object? completed = null,
    Object? total = null,
    Object? closeAppInError = null,
  }) {
    return _then(_value.copyWith(
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as InitPhase,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      closeAppInError: null == closeAppInError
          ? _value.closeAppInError
          : closeAppInError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitStateCopyWith<$Res> implements $InitStateCopyWith<$Res> {
  factory _$$_InitStateCopyWith(
          _$_InitState value, $Res Function(_$_InitState) then) =
      __$$_InitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InitPhase phase,
      String message,
      int completed,
      int total,
      bool closeAppInError});
}

/// @nodoc
class __$$_InitStateCopyWithImpl<$Res>
    extends _$InitStateCopyWithImpl<$Res, _$_InitState>
    implements _$$_InitStateCopyWith<$Res> {
  __$$_InitStateCopyWithImpl(
      _$_InitState _value, $Res Function(_$_InitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? message = null,
    Object? completed = null,
    Object? total = null,
    Object? closeAppInError = null,
  }) {
    return _then(_$_InitState(
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as InitPhase,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      closeAppInError: null == closeAppInError
          ? _value.closeAppInError
          : closeAppInError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InitState implements _InitState {
  const _$_InitState(
      {required this.phase,
      required this.message,
      required this.completed,
      required this.total,
      required this.closeAppInError});

  @override
  final InitPhase phase;
  @override
  final String message;
  @override
  final int completed;
  @override
  final int total;
  @override
  final bool closeAppInError;

  @override
  String toString() {
    return 'InitState(phase: $phase, message: $message, completed: $completed, total: $total, closeAppInError: $closeAppInError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitState &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.closeAppInError, closeAppInError) ||
                other.closeAppInError == closeAppInError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, phase, message, completed, total, closeAppInError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitStateCopyWith<_$_InitState> get copyWith =>
      __$$_InitStateCopyWithImpl<_$_InitState>(this, _$identity);
}

abstract class _InitState implements InitState {
  const factory _InitState(
      {required final InitPhase phase,
      required final String message,
      required final int completed,
      required final int total,
      required final bool closeAppInError}) = _$_InitState;

  @override
  InitPhase get phase;
  @override
  String get message;
  @override
  int get completed;
  @override
  int get total;
  @override
  bool get closeAppInError;
  @override
  @JsonKey(ignore: true)
  _$$_InitStateCopyWith<_$_InitState> get copyWith =>
      throw _privateConstructorUsedError;
}
