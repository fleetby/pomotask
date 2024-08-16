// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(bool enabled) setSoundEffectsEnabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(bool enabled)? setSoundEffectsEnabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(bool enabled)? setSoundEffectsEnabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsLoad value) load,
    required TResult Function(SettingSetSoundEffectsEnabled value)
        setSoundEffectsEnabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsLoad value)? load,
    TResult? Function(SettingSetSoundEffectsEnabled value)?
        setSoundEffectsEnabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsLoad value)? load,
    TResult Function(SettingSetSoundEffectsEnabled value)?
        setSoundEffectsEnabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SettingsLoadImplCopyWith<$Res> {
  factory _$$SettingsLoadImplCopyWith(
          _$SettingsLoadImpl value, $Res Function(_$SettingsLoadImpl) then) =
      __$$SettingsLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsLoadImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsLoadImpl>
    implements _$$SettingsLoadImplCopyWith<$Res> {
  __$$SettingsLoadImplCopyWithImpl(
      _$SettingsLoadImpl _value, $Res Function(_$SettingsLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SettingsLoadImpl implements SettingsLoad {
  const _$SettingsLoadImpl();

  @override
  String toString() {
    return 'SettingsEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(bool enabled) setSoundEffectsEnabled,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(bool enabled)? setSoundEffectsEnabled,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(bool enabled)? setSoundEffectsEnabled,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsLoad value) load,
    required TResult Function(SettingSetSoundEffectsEnabled value)
        setSoundEffectsEnabled,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsLoad value)? load,
    TResult? Function(SettingSetSoundEffectsEnabled value)?
        setSoundEffectsEnabled,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsLoad value)? load,
    TResult Function(SettingSetSoundEffectsEnabled value)?
        setSoundEffectsEnabled,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class SettingsLoad implements SettingsEvent {
  const factory SettingsLoad() = _$SettingsLoadImpl;
}

/// @nodoc
abstract class _$$SettingSetSoundEffectsEnabledImplCopyWith<$Res> {
  factory _$$SettingSetSoundEffectsEnabledImplCopyWith(
          _$SettingSetSoundEffectsEnabledImpl value,
          $Res Function(_$SettingSetSoundEffectsEnabledImpl) then) =
      __$$SettingSetSoundEffectsEnabledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool enabled});
}

/// @nodoc
class __$$SettingSetSoundEffectsEnabledImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res,
        _$SettingSetSoundEffectsEnabledImpl>
    implements _$$SettingSetSoundEffectsEnabledImplCopyWith<$Res> {
  __$$SettingSetSoundEffectsEnabledImplCopyWithImpl(
      _$SettingSetSoundEffectsEnabledImpl _value,
      $Res Function(_$SettingSetSoundEffectsEnabledImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
  }) {
    return _then(_$SettingSetSoundEffectsEnabledImpl(
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SettingSetSoundEffectsEnabledImpl
    implements SettingSetSoundEffectsEnabled {
  const _$SettingSetSoundEffectsEnabledImpl({required this.enabled});

  @override
  final bool enabled;

  @override
  String toString() {
    return 'SettingsEvent.setSoundEffectsEnabled(enabled: $enabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingSetSoundEffectsEnabledImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enabled);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingSetSoundEffectsEnabledImplCopyWith<
          _$SettingSetSoundEffectsEnabledImpl>
      get copyWith => __$$SettingSetSoundEffectsEnabledImplCopyWithImpl<
          _$SettingSetSoundEffectsEnabledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(bool enabled) setSoundEffectsEnabled,
  }) {
    return setSoundEffectsEnabled(enabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(bool enabled)? setSoundEffectsEnabled,
  }) {
    return setSoundEffectsEnabled?.call(enabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(bool enabled)? setSoundEffectsEnabled,
    required TResult orElse(),
  }) {
    if (setSoundEffectsEnabled != null) {
      return setSoundEffectsEnabled(enabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsLoad value) load,
    required TResult Function(SettingSetSoundEffectsEnabled value)
        setSoundEffectsEnabled,
  }) {
    return setSoundEffectsEnabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsLoad value)? load,
    TResult? Function(SettingSetSoundEffectsEnabled value)?
        setSoundEffectsEnabled,
  }) {
    return setSoundEffectsEnabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsLoad value)? load,
    TResult Function(SettingSetSoundEffectsEnabled value)?
        setSoundEffectsEnabled,
    required TResult orElse(),
  }) {
    if (setSoundEffectsEnabled != null) {
      return setSoundEffectsEnabled(this);
    }
    return orElse();
  }
}

abstract class SettingSetSoundEffectsEnabled implements SettingsEvent {
  const factory SettingSetSoundEffectsEnabled({required final bool enabled}) =
      _$SettingSetSoundEffectsEnabledImpl;

  bool get enabled;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingSetSoundEffectsEnabledImplCopyWith<
          _$SettingSetSoundEffectsEnabledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  bool get soundEffectsEnabled => throw _privateConstructorUsedError;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({bool soundEffectsEnabled});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soundEffectsEnabled = null,
  }) {
    return _then(_value.copyWith(
      soundEffectsEnabled: null == soundEffectsEnabled
          ? _value.soundEffectsEnabled
          : soundEffectsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool soundEffectsEnabled});
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soundEffectsEnabled = null,
  }) {
    return _then(_$SettingsStateImpl(
      soundEffectsEnabled: null == soundEffectsEnabled
          ? _value.soundEffectsEnabled
          : soundEffectsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SettingsStateImpl implements _SettingsState {
  const _$SettingsStateImpl({required this.soundEffectsEnabled});

  @override
  final bool soundEffectsEnabled;

  @override
  String toString() {
    return 'SettingsState(soundEffectsEnabled: $soundEffectsEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.soundEffectsEnabled, soundEffectsEnabled) ||
                other.soundEffectsEnabled == soundEffectsEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, soundEffectsEnabled);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState({required final bool soundEffectsEnabled}) =
      _$SettingsStateImpl;

  @override
  bool get soundEffectsEnabled;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
