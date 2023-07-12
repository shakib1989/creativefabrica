// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppConfigState {
  AppConfigPhase get appAuthPhase => throw _privateConstructorUsedError;
  UserCredential? get userCredential => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppConfigStateCopyWith<AppConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigStateCopyWith<$Res> {
  factory $AppConfigStateCopyWith(
          AppConfigState value, $Res Function(AppConfigState) then) =
      _$AppConfigStateCopyWithImpl<$Res, AppConfigState>;
  @useResult
  $Res call({AppConfigPhase appAuthPhase, UserCredential? userCredential});
}

/// @nodoc
class _$AppConfigStateCopyWithImpl<$Res, $Val extends AppConfigState>
    implements $AppConfigStateCopyWith<$Res> {
  _$AppConfigStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appAuthPhase = null,
    Object? userCredential = freezed,
  }) {
    return _then(_value.copyWith(
      appAuthPhase: null == appAuthPhase
          ? _value.appAuthPhase
          : appAuthPhase // ignore: cast_nullable_to_non_nullable
              as AppConfigPhase,
      userCredential: freezed == userCredential
          ? _value.userCredential
          : userCredential // ignore: cast_nullable_to_non_nullable
              as UserCredential?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppConfigStateCopyWith<$Res>
    implements $AppConfigStateCopyWith<$Res> {
  factory _$$_AppConfigStateCopyWith(
          _$_AppConfigState value, $Res Function(_$_AppConfigState) then) =
      __$$_AppConfigStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppConfigPhase appAuthPhase, UserCredential? userCredential});
}

/// @nodoc
class __$$_AppConfigStateCopyWithImpl<$Res>
    extends _$AppConfigStateCopyWithImpl<$Res, _$_AppConfigState>
    implements _$$_AppConfigStateCopyWith<$Res> {
  __$$_AppConfigStateCopyWithImpl(
      _$_AppConfigState _value, $Res Function(_$_AppConfigState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appAuthPhase = null,
    Object? userCredential = freezed,
  }) {
    return _then(_$_AppConfigState(
      appAuthPhase: null == appAuthPhase
          ? _value.appAuthPhase
          : appAuthPhase // ignore: cast_nullable_to_non_nullable
              as AppConfigPhase,
      userCredential: freezed == userCredential
          ? _value.userCredential
          : userCredential // ignore: cast_nullable_to_non_nullable
              as UserCredential?,
    ));
  }
}

/// @nodoc

class _$_AppConfigState implements _AppConfigState {
  const _$_AppConfigState(
      {required this.appAuthPhase, required this.userCredential});

  @override
  final AppConfigPhase appAuthPhase;
  @override
  final UserCredential? userCredential;

  @override
  String toString() {
    return 'AppConfigState(appAuthPhase: $appAuthPhase, userCredential: $userCredential)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppConfigState &&
            (identical(other.appAuthPhase, appAuthPhase) ||
                other.appAuthPhase == appAuthPhase) &&
            (identical(other.userCredential, userCredential) ||
                other.userCredential == userCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appAuthPhase, userCredential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppConfigStateCopyWith<_$_AppConfigState> get copyWith =>
      __$$_AppConfigStateCopyWithImpl<_$_AppConfigState>(this, _$identity);
}

abstract class _AppConfigState implements AppConfigState {
  const factory _AppConfigState(
      {required final AppConfigPhase appAuthPhase,
      required final UserCredential? userCredential}) = _$_AppConfigState;

  @override
  AppConfigPhase get appAuthPhase;
  @override
  UserCredential? get userCredential;
  @override
  @JsonKey(ignore: true)
  _$$_AppConfigStateCopyWith<_$_AppConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}
