// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pomodoro_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PomodoroEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PomodoroTimerType timerType) changeTimerType,
    required TResult Function() increaseTimerCount,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PomodoroTimerType timerType)? changeTimerType,
    TResult? Function()? increaseTimerCount,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PomodoroTimerType timerType)? changeTimerType,
    TResult Function()? increaseTimerCount,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroChangeTimerType value) changeTimerType,
    required TResult Function(PomodoroIncreaseTimerCount value)
        increaseTimerCount,
    required TResult Function(PomodoroReset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PomodoroChangeTimerType value)? changeTimerType,
    TResult? Function(PomodoroIncreaseTimerCount value)? increaseTimerCount,
    TResult? Function(PomodoroReset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroChangeTimerType value)? changeTimerType,
    TResult Function(PomodoroIncreaseTimerCount value)? increaseTimerCount,
    TResult Function(PomodoroReset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroEventCopyWith<$Res> {
  factory $PomodoroEventCopyWith(
          PomodoroEvent value, $Res Function(PomodoroEvent) then) =
      _$PomodoroEventCopyWithImpl<$Res, PomodoroEvent>;
}

/// @nodoc
class _$PomodoroEventCopyWithImpl<$Res, $Val extends PomodoroEvent>
    implements $PomodoroEventCopyWith<$Res> {
  _$PomodoroEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PomodoroChangeTimerTypeImplCopyWith<$Res> {
  factory _$$PomodoroChangeTimerTypeImplCopyWith(
          _$PomodoroChangeTimerTypeImpl value,
          $Res Function(_$PomodoroChangeTimerTypeImpl) then) =
      __$$PomodoroChangeTimerTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PomodoroTimerType timerType});
}

/// @nodoc
class __$$PomodoroChangeTimerTypeImplCopyWithImpl<$Res>
    extends _$PomodoroEventCopyWithImpl<$Res, _$PomodoroChangeTimerTypeImpl>
    implements _$$PomodoroChangeTimerTypeImplCopyWith<$Res> {
  __$$PomodoroChangeTimerTypeImplCopyWithImpl(
      _$PomodoroChangeTimerTypeImpl _value,
      $Res Function(_$PomodoroChangeTimerTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timerType = null,
  }) {
    return _then(_$PomodoroChangeTimerTypeImpl(
      timerType: null == timerType
          ? _value.timerType
          : timerType // ignore: cast_nullable_to_non_nullable
              as PomodoroTimerType,
    ));
  }
}

/// @nodoc

class _$PomodoroChangeTimerTypeImpl implements PomodoroChangeTimerType {
  const _$PomodoroChangeTimerTypeImpl({required this.timerType});

  @override
  final PomodoroTimerType timerType;

  @override
  String toString() {
    return 'PomodoroEvent.changeTimerType(timerType: $timerType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PomodoroChangeTimerTypeImpl &&
            (identical(other.timerType, timerType) ||
                other.timerType == timerType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timerType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PomodoroChangeTimerTypeImplCopyWith<_$PomodoroChangeTimerTypeImpl>
      get copyWith => __$$PomodoroChangeTimerTypeImplCopyWithImpl<
          _$PomodoroChangeTimerTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PomodoroTimerType timerType) changeTimerType,
    required TResult Function() increaseTimerCount,
    required TResult Function() reset,
  }) {
    return changeTimerType(timerType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PomodoroTimerType timerType)? changeTimerType,
    TResult? Function()? increaseTimerCount,
    TResult? Function()? reset,
  }) {
    return changeTimerType?.call(timerType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PomodoroTimerType timerType)? changeTimerType,
    TResult Function()? increaseTimerCount,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (changeTimerType != null) {
      return changeTimerType(timerType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroChangeTimerType value) changeTimerType,
    required TResult Function(PomodoroIncreaseTimerCount value)
        increaseTimerCount,
    required TResult Function(PomodoroReset value) reset,
  }) {
    return changeTimerType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PomodoroChangeTimerType value)? changeTimerType,
    TResult? Function(PomodoroIncreaseTimerCount value)? increaseTimerCount,
    TResult? Function(PomodoroReset value)? reset,
  }) {
    return changeTimerType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroChangeTimerType value)? changeTimerType,
    TResult Function(PomodoroIncreaseTimerCount value)? increaseTimerCount,
    TResult Function(PomodoroReset value)? reset,
    required TResult orElse(),
  }) {
    if (changeTimerType != null) {
      return changeTimerType(this);
    }
    return orElse();
  }
}

abstract class PomodoroChangeTimerType implements PomodoroEvent {
  const factory PomodoroChangeTimerType(
          {required final PomodoroTimerType timerType}) =
      _$PomodoroChangeTimerTypeImpl;

  PomodoroTimerType get timerType;
  @JsonKey(ignore: true)
  _$$PomodoroChangeTimerTypeImplCopyWith<_$PomodoroChangeTimerTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PomodoroIncreaseTimerCountImplCopyWith<$Res> {
  factory _$$PomodoroIncreaseTimerCountImplCopyWith(
          _$PomodoroIncreaseTimerCountImpl value,
          $Res Function(_$PomodoroIncreaseTimerCountImpl) then) =
      __$$PomodoroIncreaseTimerCountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PomodoroIncreaseTimerCountImplCopyWithImpl<$Res>
    extends _$PomodoroEventCopyWithImpl<$Res, _$PomodoroIncreaseTimerCountImpl>
    implements _$$PomodoroIncreaseTimerCountImplCopyWith<$Res> {
  __$$PomodoroIncreaseTimerCountImplCopyWithImpl(
      _$PomodoroIncreaseTimerCountImpl _value,
      $Res Function(_$PomodoroIncreaseTimerCountImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PomodoroIncreaseTimerCountImpl implements PomodoroIncreaseTimerCount {
  const _$PomodoroIncreaseTimerCountImpl();

  @override
  String toString() {
    return 'PomodoroEvent.increaseTimerCount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PomodoroIncreaseTimerCountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PomodoroTimerType timerType) changeTimerType,
    required TResult Function() increaseTimerCount,
    required TResult Function() reset,
  }) {
    return increaseTimerCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PomodoroTimerType timerType)? changeTimerType,
    TResult? Function()? increaseTimerCount,
    TResult? Function()? reset,
  }) {
    return increaseTimerCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PomodoroTimerType timerType)? changeTimerType,
    TResult Function()? increaseTimerCount,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (increaseTimerCount != null) {
      return increaseTimerCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroChangeTimerType value) changeTimerType,
    required TResult Function(PomodoroIncreaseTimerCount value)
        increaseTimerCount,
    required TResult Function(PomodoroReset value) reset,
  }) {
    return increaseTimerCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PomodoroChangeTimerType value)? changeTimerType,
    TResult? Function(PomodoroIncreaseTimerCount value)? increaseTimerCount,
    TResult? Function(PomodoroReset value)? reset,
  }) {
    return increaseTimerCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroChangeTimerType value)? changeTimerType,
    TResult Function(PomodoroIncreaseTimerCount value)? increaseTimerCount,
    TResult Function(PomodoroReset value)? reset,
    required TResult orElse(),
  }) {
    if (increaseTimerCount != null) {
      return increaseTimerCount(this);
    }
    return orElse();
  }
}

abstract class PomodoroIncreaseTimerCount implements PomodoroEvent {
  const factory PomodoroIncreaseTimerCount() = _$PomodoroIncreaseTimerCountImpl;
}

/// @nodoc
abstract class _$$PomodoroResetImplCopyWith<$Res> {
  factory _$$PomodoroResetImplCopyWith(
          _$PomodoroResetImpl value, $Res Function(_$PomodoroResetImpl) then) =
      __$$PomodoroResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PomodoroResetImplCopyWithImpl<$Res>
    extends _$PomodoroEventCopyWithImpl<$Res, _$PomodoroResetImpl>
    implements _$$PomodoroResetImplCopyWith<$Res> {
  __$$PomodoroResetImplCopyWithImpl(
      _$PomodoroResetImpl _value, $Res Function(_$PomodoroResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PomodoroResetImpl implements PomodoroReset {
  const _$PomodoroResetImpl();

  @override
  String toString() {
    return 'PomodoroEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PomodoroResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PomodoroTimerType timerType) changeTimerType,
    required TResult Function() increaseTimerCount,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PomodoroTimerType timerType)? changeTimerType,
    TResult? Function()? increaseTimerCount,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PomodoroTimerType timerType)? changeTimerType,
    TResult Function()? increaseTimerCount,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroChangeTimerType value) changeTimerType,
    required TResult Function(PomodoroIncreaseTimerCount value)
        increaseTimerCount,
    required TResult Function(PomodoroReset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PomodoroChangeTimerType value)? changeTimerType,
    TResult? Function(PomodoroIncreaseTimerCount value)? increaseTimerCount,
    TResult? Function(PomodoroReset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroChangeTimerType value)? changeTimerType,
    TResult Function(PomodoroIncreaseTimerCount value)? increaseTimerCount,
    TResult Function(PomodoroReset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class PomodoroReset implements PomodoroEvent {
  const factory PomodoroReset() = _$PomodoroResetImpl;
}

/// @nodoc
mixin _$PomodoroState {
  PomodoroTimerType get timerType => throw _privateConstructorUsedError;
  Map<PomodoroTimerType, int> get timerCount =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PomodoroStateCopyWith<PomodoroState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroStateCopyWith<$Res> {
  factory $PomodoroStateCopyWith(
          PomodoroState value, $Res Function(PomodoroState) then) =
      _$PomodoroStateCopyWithImpl<$Res, PomodoroState>;
  @useResult
  $Res call(
      {PomodoroTimerType timerType, Map<PomodoroTimerType, int> timerCount});
}

/// @nodoc
class _$PomodoroStateCopyWithImpl<$Res, $Val extends PomodoroState>
    implements $PomodoroStateCopyWith<$Res> {
  _$PomodoroStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timerType = null,
    Object? timerCount = null,
  }) {
    return _then(_value.copyWith(
      timerType: null == timerType
          ? _value.timerType
          : timerType // ignore: cast_nullable_to_non_nullable
              as PomodoroTimerType,
      timerCount: null == timerCount
          ? _value.timerCount
          : timerCount // ignore: cast_nullable_to_non_nullable
              as Map<PomodoroTimerType, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PomodoroStateImplCopyWith<$Res>
    implements $PomodoroStateCopyWith<$Res> {
  factory _$$PomodoroStateImplCopyWith(
          _$PomodoroStateImpl value, $Res Function(_$PomodoroStateImpl) then) =
      __$$PomodoroStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PomodoroTimerType timerType, Map<PomodoroTimerType, int> timerCount});
}

/// @nodoc
class __$$PomodoroStateImplCopyWithImpl<$Res>
    extends _$PomodoroStateCopyWithImpl<$Res, _$PomodoroStateImpl>
    implements _$$PomodoroStateImplCopyWith<$Res> {
  __$$PomodoroStateImplCopyWithImpl(
      _$PomodoroStateImpl _value, $Res Function(_$PomodoroStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timerType = null,
    Object? timerCount = null,
  }) {
    return _then(_$PomodoroStateImpl(
      timerType: null == timerType
          ? _value.timerType
          : timerType // ignore: cast_nullable_to_non_nullable
              as PomodoroTimerType,
      timerCount: null == timerCount
          ? _value._timerCount
          : timerCount // ignore: cast_nullable_to_non_nullable
              as Map<PomodoroTimerType, int>,
    ));
  }
}

/// @nodoc

class _$PomodoroStateImpl extends _PomodoroState {
  const _$PomodoroStateImpl(
      {this.timerType = PomodoroTimerType.pomodoro,
      final Map<PomodoroTimerType, int> timerCount = const {
        PomodoroTimerType.pomodoro: 1,
        PomodoroTimerType.shortBreak: 1,
        PomodoroTimerType.longBreak: 1
      }})
      : _timerCount = timerCount,
        super._();

  @override
  @JsonKey()
  final PomodoroTimerType timerType;
  final Map<PomodoroTimerType, int> _timerCount;
  @override
  @JsonKey()
  Map<PomodoroTimerType, int> get timerCount {
    if (_timerCount is EqualUnmodifiableMapView) return _timerCount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_timerCount);
  }

  @override
  String toString() {
    return 'PomodoroState(timerType: $timerType, timerCount: $timerCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PomodoroStateImpl &&
            (identical(other.timerType, timerType) ||
                other.timerType == timerType) &&
            const DeepCollectionEquality()
                .equals(other._timerCount, _timerCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, timerType, const DeepCollectionEquality().hash(_timerCount));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PomodoroStateImplCopyWith<_$PomodoroStateImpl> get copyWith =>
      __$$PomodoroStateImplCopyWithImpl<_$PomodoroStateImpl>(this, _$identity);
}

abstract class _PomodoroState extends PomodoroState {
  const factory _PomodoroState(
      {final PomodoroTimerType timerType,
      final Map<PomodoroTimerType, int> timerCount}) = _$PomodoroStateImpl;
  const _PomodoroState._() : super._();

  @override
  PomodoroTimerType get timerType;
  @override
  Map<PomodoroTimerType, int> get timerCount;
  @override
  @JsonKey(ignore: true)
  _$$PomodoroStateImplCopyWith<_$PomodoroStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
