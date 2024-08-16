// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) start,
    required TResult Function() finish,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() skip,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? start,
    TResult? Function()? finish,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? skip,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? start,
    TResult Function()? finish,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? skip,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStart value) start,
    required TResult Function(TimerFinish value) finish,
    required TResult Function(TimerPause value) pause,
    required TResult Function(TimerResume value) resume,
    required TResult Function(TimerSkip value) skip,
    required TResult Function(TimerReset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStart value)? start,
    TResult? Function(TimerFinish value)? finish,
    TResult? Function(TimerPause value)? pause,
    TResult? Function(TimerResume value)? resume,
    TResult? Function(TimerSkip value)? skip,
    TResult? Function(TimerReset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStart value)? start,
    TResult Function(TimerFinish value)? finish,
    TResult Function(TimerPause value)? pause,
    TResult Function(TimerResume value)? resume,
    TResult Function(TimerSkip value)? skip,
    TResult Function(TimerReset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerEventCopyWith<$Res> {
  factory $TimerEventCopyWith(
          TimerEvent value, $Res Function(TimerEvent) then) =
      _$TimerEventCopyWithImpl<$Res, TimerEvent>;
}

/// @nodoc
class _$TimerEventCopyWithImpl<$Res, $Val extends TimerEvent>
    implements $TimerEventCopyWith<$Res> {
  _$TimerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TimerStartImplCopyWith<$Res> {
  factory _$$TimerStartImplCopyWith(
          _$TimerStartImpl value, $Res Function(_$TimerStartImpl) then) =
      __$$TimerStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$TimerStartImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerStartImpl>
    implements _$$TimerStartImplCopyWith<$Res> {
  __$$TimerStartImplCopyWithImpl(
      _$TimerStartImpl _value, $Res Function(_$TimerStartImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$TimerStartImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$TimerStartImpl implements TimerStart {
  const _$TimerStartImpl({required this.duration});

  @override
  final Duration duration;

  @override
  String toString() {
    return 'TimerEvent.start(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerStartImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerStartImplCopyWith<_$TimerStartImpl> get copyWith =>
      __$$TimerStartImplCopyWithImpl<_$TimerStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) start,
    required TResult Function() finish,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() skip,
    required TResult Function() reset,
  }) {
    return start(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? start,
    TResult? Function()? finish,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? skip,
    TResult? Function()? reset,
  }) {
    return start?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? start,
    TResult Function()? finish,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? skip,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStart value) start,
    required TResult Function(TimerFinish value) finish,
    required TResult Function(TimerPause value) pause,
    required TResult Function(TimerResume value) resume,
    required TResult Function(TimerSkip value) skip,
    required TResult Function(TimerReset value) reset,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStart value)? start,
    TResult? Function(TimerFinish value)? finish,
    TResult? Function(TimerPause value)? pause,
    TResult? Function(TimerResume value)? resume,
    TResult? Function(TimerSkip value)? skip,
    TResult? Function(TimerReset value)? reset,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStart value)? start,
    TResult Function(TimerFinish value)? finish,
    TResult Function(TimerPause value)? pause,
    TResult Function(TimerResume value)? resume,
    TResult Function(TimerSkip value)? skip,
    TResult Function(TimerReset value)? reset,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class TimerStart implements TimerEvent {
  const factory TimerStart({required final Duration duration}) =
      _$TimerStartImpl;

  Duration get duration;

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimerStartImplCopyWith<_$TimerStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerFinishImplCopyWith<$Res> {
  factory _$$TimerFinishImplCopyWith(
          _$TimerFinishImpl value, $Res Function(_$TimerFinishImpl) then) =
      __$$TimerFinishImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerFinishImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerFinishImpl>
    implements _$$TimerFinishImplCopyWith<$Res> {
  __$$TimerFinishImplCopyWithImpl(
      _$TimerFinishImpl _value, $Res Function(_$TimerFinishImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TimerFinishImpl implements TimerFinish {
  const _$TimerFinishImpl();

  @override
  String toString() {
    return 'TimerEvent.finish()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerFinishImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) start,
    required TResult Function() finish,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() skip,
    required TResult Function() reset,
  }) {
    return finish();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? start,
    TResult? Function()? finish,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? skip,
    TResult? Function()? reset,
  }) {
    return finish?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? start,
    TResult Function()? finish,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? skip,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStart value) start,
    required TResult Function(TimerFinish value) finish,
    required TResult Function(TimerPause value) pause,
    required TResult Function(TimerResume value) resume,
    required TResult Function(TimerSkip value) skip,
    required TResult Function(TimerReset value) reset,
  }) {
    return finish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStart value)? start,
    TResult? Function(TimerFinish value)? finish,
    TResult? Function(TimerPause value)? pause,
    TResult? Function(TimerResume value)? resume,
    TResult? Function(TimerSkip value)? skip,
    TResult? Function(TimerReset value)? reset,
  }) {
    return finish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStart value)? start,
    TResult Function(TimerFinish value)? finish,
    TResult Function(TimerPause value)? pause,
    TResult Function(TimerResume value)? resume,
    TResult Function(TimerSkip value)? skip,
    TResult Function(TimerReset value)? reset,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(this);
    }
    return orElse();
  }
}

abstract class TimerFinish implements TimerEvent {
  const factory TimerFinish() = _$TimerFinishImpl;
}

/// @nodoc
abstract class _$$TimerPauseImplCopyWith<$Res> {
  factory _$$TimerPauseImplCopyWith(
          _$TimerPauseImpl value, $Res Function(_$TimerPauseImpl) then) =
      __$$TimerPauseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerPauseImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerPauseImpl>
    implements _$$TimerPauseImplCopyWith<$Res> {
  __$$TimerPauseImplCopyWithImpl(
      _$TimerPauseImpl _value, $Res Function(_$TimerPauseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TimerPauseImpl implements TimerPause {
  const _$TimerPauseImpl();

  @override
  String toString() {
    return 'TimerEvent.pause()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerPauseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) start,
    required TResult Function() finish,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() skip,
    required TResult Function() reset,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? start,
    TResult? Function()? finish,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? skip,
    TResult? Function()? reset,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? start,
    TResult Function()? finish,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? skip,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStart value) start,
    required TResult Function(TimerFinish value) finish,
    required TResult Function(TimerPause value) pause,
    required TResult Function(TimerResume value) resume,
    required TResult Function(TimerSkip value) skip,
    required TResult Function(TimerReset value) reset,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStart value)? start,
    TResult? Function(TimerFinish value)? finish,
    TResult? Function(TimerPause value)? pause,
    TResult? Function(TimerResume value)? resume,
    TResult? Function(TimerSkip value)? skip,
    TResult? Function(TimerReset value)? reset,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStart value)? start,
    TResult Function(TimerFinish value)? finish,
    TResult Function(TimerPause value)? pause,
    TResult Function(TimerResume value)? resume,
    TResult Function(TimerSkip value)? skip,
    TResult Function(TimerReset value)? reset,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class TimerPause implements TimerEvent {
  const factory TimerPause() = _$TimerPauseImpl;
}

/// @nodoc
abstract class _$$TimerResumeImplCopyWith<$Res> {
  factory _$$TimerResumeImplCopyWith(
          _$TimerResumeImpl value, $Res Function(_$TimerResumeImpl) then) =
      __$$TimerResumeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerResumeImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerResumeImpl>
    implements _$$TimerResumeImplCopyWith<$Res> {
  __$$TimerResumeImplCopyWithImpl(
      _$TimerResumeImpl _value, $Res Function(_$TimerResumeImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TimerResumeImpl implements TimerResume {
  const _$TimerResumeImpl();

  @override
  String toString() {
    return 'TimerEvent.resume()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerResumeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) start,
    required TResult Function() finish,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() skip,
    required TResult Function() reset,
  }) {
    return resume();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? start,
    TResult? Function()? finish,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? skip,
    TResult? Function()? reset,
  }) {
    return resume?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? start,
    TResult Function()? finish,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? skip,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStart value) start,
    required TResult Function(TimerFinish value) finish,
    required TResult Function(TimerPause value) pause,
    required TResult Function(TimerResume value) resume,
    required TResult Function(TimerSkip value) skip,
    required TResult Function(TimerReset value) reset,
  }) {
    return resume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStart value)? start,
    TResult? Function(TimerFinish value)? finish,
    TResult? Function(TimerPause value)? pause,
    TResult? Function(TimerResume value)? resume,
    TResult? Function(TimerSkip value)? skip,
    TResult? Function(TimerReset value)? reset,
  }) {
    return resume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStart value)? start,
    TResult Function(TimerFinish value)? finish,
    TResult Function(TimerPause value)? pause,
    TResult Function(TimerResume value)? resume,
    TResult Function(TimerSkip value)? skip,
    TResult Function(TimerReset value)? reset,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume(this);
    }
    return orElse();
  }
}

abstract class TimerResume implements TimerEvent {
  const factory TimerResume() = _$TimerResumeImpl;
}

/// @nodoc
abstract class _$$TimerSkipImplCopyWith<$Res> {
  factory _$$TimerSkipImplCopyWith(
          _$TimerSkipImpl value, $Res Function(_$TimerSkipImpl) then) =
      __$$TimerSkipImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerSkipImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerSkipImpl>
    implements _$$TimerSkipImplCopyWith<$Res> {
  __$$TimerSkipImplCopyWithImpl(
      _$TimerSkipImpl _value, $Res Function(_$TimerSkipImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TimerSkipImpl implements TimerSkip {
  const _$TimerSkipImpl();

  @override
  String toString() {
    return 'TimerEvent.skip()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerSkipImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) start,
    required TResult Function() finish,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() skip,
    required TResult Function() reset,
  }) {
    return skip();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? start,
    TResult? Function()? finish,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? skip,
    TResult? Function()? reset,
  }) {
    return skip?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? start,
    TResult Function()? finish,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? skip,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (skip != null) {
      return skip();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStart value) start,
    required TResult Function(TimerFinish value) finish,
    required TResult Function(TimerPause value) pause,
    required TResult Function(TimerResume value) resume,
    required TResult Function(TimerSkip value) skip,
    required TResult Function(TimerReset value) reset,
  }) {
    return skip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStart value)? start,
    TResult? Function(TimerFinish value)? finish,
    TResult? Function(TimerPause value)? pause,
    TResult? Function(TimerResume value)? resume,
    TResult? Function(TimerSkip value)? skip,
    TResult? Function(TimerReset value)? reset,
  }) {
    return skip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStart value)? start,
    TResult Function(TimerFinish value)? finish,
    TResult Function(TimerPause value)? pause,
    TResult Function(TimerResume value)? resume,
    TResult Function(TimerSkip value)? skip,
    TResult Function(TimerReset value)? reset,
    required TResult orElse(),
  }) {
    if (skip != null) {
      return skip(this);
    }
    return orElse();
  }
}

abstract class TimerSkip implements TimerEvent {
  const factory TimerSkip() = _$TimerSkipImpl;
}

/// @nodoc
abstract class _$$TimerResetImplCopyWith<$Res> {
  factory _$$TimerResetImplCopyWith(
          _$TimerResetImpl value, $Res Function(_$TimerResetImpl) then) =
      __$$TimerResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerResetImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerResetImpl>
    implements _$$TimerResetImplCopyWith<$Res> {
  __$$TimerResetImplCopyWithImpl(
      _$TimerResetImpl _value, $Res Function(_$TimerResetImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TimerResetImpl implements TimerReset {
  const _$TimerResetImpl();

  @override
  String toString() {
    return 'TimerEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) start,
    required TResult Function() finish,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() skip,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? start,
    TResult? Function()? finish,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? skip,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? start,
    TResult Function()? finish,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? skip,
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
    required TResult Function(TimerStart value) start,
    required TResult Function(TimerFinish value) finish,
    required TResult Function(TimerPause value) pause,
    required TResult Function(TimerResume value) resume,
    required TResult Function(TimerSkip value) skip,
    required TResult Function(TimerReset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStart value)? start,
    TResult? Function(TimerFinish value)? finish,
    TResult? Function(TimerPause value)? pause,
    TResult? Function(TimerResume value)? resume,
    TResult? Function(TimerSkip value)? skip,
    TResult? Function(TimerReset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStart value)? start,
    TResult Function(TimerFinish value)? finish,
    TResult Function(TimerPause value)? pause,
    TResult Function(TimerResume value)? resume,
    TResult Function(TimerSkip value)? skip,
    TResult Function(TimerReset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class TimerReset implements TimerEvent {
  const factory TimerReset() = _$TimerResetImpl;
}

/// @nodoc
mixin _$TimerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration remainingTime) ongoing,
    required TResult Function(Duration remainingTime) paused,
    required TResult Function() finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Duration remainingTime)? ongoing,
    TResult? Function(Duration remainingTime)? paused,
    TResult? Function()? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration remainingTime)? ongoing,
    TResult Function(Duration remainingTime)? paused,
    TResult Function()? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerInitial value) initial,
    required TResult Function(TimerOngoing value) ongoing,
    required TResult Function(TimerPaused value) paused,
    required TResult Function(TimerFinished value) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitial value)? initial,
    TResult? Function(TimerOngoing value)? ongoing,
    TResult? Function(TimerPaused value)? paused,
    TResult? Function(TimerFinished value)? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitial value)? initial,
    TResult Function(TimerOngoing value)? ongoing,
    TResult Function(TimerPaused value)? paused,
    TResult Function(TimerFinished value)? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res, TimerState>;
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res, $Val extends TimerState>
    implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TimerInitialImplCopyWith<$Res> {
  factory _$$TimerInitialImplCopyWith(
          _$TimerInitialImpl value, $Res Function(_$TimerInitialImpl) then) =
      __$$TimerInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerInitialImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerInitialImpl>
    implements _$$TimerInitialImplCopyWith<$Res> {
  __$$TimerInitialImplCopyWithImpl(
      _$TimerInitialImpl _value, $Res Function(_$TimerInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TimerInitialImpl implements TimerInitial {
  const _$TimerInitialImpl();

  @override
  String toString() {
    return 'TimerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration remainingTime) ongoing,
    required TResult Function(Duration remainingTime) paused,
    required TResult Function() finished,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Duration remainingTime)? ongoing,
    TResult? Function(Duration remainingTime)? paused,
    TResult? Function()? finished,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration remainingTime)? ongoing,
    TResult Function(Duration remainingTime)? paused,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerInitial value) initial,
    required TResult Function(TimerOngoing value) ongoing,
    required TResult Function(TimerPaused value) paused,
    required TResult Function(TimerFinished value) finished,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitial value)? initial,
    TResult? Function(TimerOngoing value)? ongoing,
    TResult? Function(TimerPaused value)? paused,
    TResult? Function(TimerFinished value)? finished,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitial value)? initial,
    TResult Function(TimerOngoing value)? ongoing,
    TResult Function(TimerPaused value)? paused,
    TResult Function(TimerFinished value)? finished,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TimerInitial implements TimerState {
  const factory TimerInitial() = _$TimerInitialImpl;
}

/// @nodoc
abstract class _$$TimerOngoingImplCopyWith<$Res> {
  factory _$$TimerOngoingImplCopyWith(
          _$TimerOngoingImpl value, $Res Function(_$TimerOngoingImpl) then) =
      __$$TimerOngoingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration remainingTime});
}

/// @nodoc
class __$$TimerOngoingImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerOngoingImpl>
    implements _$$TimerOngoingImplCopyWith<$Res> {
  __$$TimerOngoingImplCopyWithImpl(
      _$TimerOngoingImpl _value, $Res Function(_$TimerOngoingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remainingTime = null,
  }) {
    return _then(_$TimerOngoingImpl(
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$TimerOngoingImpl implements TimerOngoing {
  const _$TimerOngoingImpl({required this.remainingTime});

  @override
  final Duration remainingTime;

  @override
  String toString() {
    return 'TimerState.ongoing(remainingTime: $remainingTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerOngoingImpl &&
            (identical(other.remainingTime, remainingTime) ||
                other.remainingTime == remainingTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remainingTime);

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerOngoingImplCopyWith<_$TimerOngoingImpl> get copyWith =>
      __$$TimerOngoingImplCopyWithImpl<_$TimerOngoingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration remainingTime) ongoing,
    required TResult Function(Duration remainingTime) paused,
    required TResult Function() finished,
  }) {
    return ongoing(remainingTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Duration remainingTime)? ongoing,
    TResult? Function(Duration remainingTime)? paused,
    TResult? Function()? finished,
  }) {
    return ongoing?.call(remainingTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration remainingTime)? ongoing,
    TResult Function(Duration remainingTime)? paused,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (ongoing != null) {
      return ongoing(remainingTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerInitial value) initial,
    required TResult Function(TimerOngoing value) ongoing,
    required TResult Function(TimerPaused value) paused,
    required TResult Function(TimerFinished value) finished,
  }) {
    return ongoing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitial value)? initial,
    TResult? Function(TimerOngoing value)? ongoing,
    TResult? Function(TimerPaused value)? paused,
    TResult? Function(TimerFinished value)? finished,
  }) {
    return ongoing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitial value)? initial,
    TResult Function(TimerOngoing value)? ongoing,
    TResult Function(TimerPaused value)? paused,
    TResult Function(TimerFinished value)? finished,
    required TResult orElse(),
  }) {
    if (ongoing != null) {
      return ongoing(this);
    }
    return orElse();
  }
}

abstract class TimerOngoing implements TimerState {
  const factory TimerOngoing({required final Duration remainingTime}) =
      _$TimerOngoingImpl;

  Duration get remainingTime;

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimerOngoingImplCopyWith<_$TimerOngoingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerPausedImplCopyWith<$Res> {
  factory _$$TimerPausedImplCopyWith(
          _$TimerPausedImpl value, $Res Function(_$TimerPausedImpl) then) =
      __$$TimerPausedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration remainingTime});
}

/// @nodoc
class __$$TimerPausedImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerPausedImpl>
    implements _$$TimerPausedImplCopyWith<$Res> {
  __$$TimerPausedImplCopyWithImpl(
      _$TimerPausedImpl _value, $Res Function(_$TimerPausedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remainingTime = null,
  }) {
    return _then(_$TimerPausedImpl(
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$TimerPausedImpl implements TimerPaused {
  const _$TimerPausedImpl({required this.remainingTime});

  @override
  final Duration remainingTime;

  @override
  String toString() {
    return 'TimerState.paused(remainingTime: $remainingTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerPausedImpl &&
            (identical(other.remainingTime, remainingTime) ||
                other.remainingTime == remainingTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remainingTime);

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerPausedImplCopyWith<_$TimerPausedImpl> get copyWith =>
      __$$TimerPausedImplCopyWithImpl<_$TimerPausedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration remainingTime) ongoing,
    required TResult Function(Duration remainingTime) paused,
    required TResult Function() finished,
  }) {
    return paused(remainingTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Duration remainingTime)? ongoing,
    TResult? Function(Duration remainingTime)? paused,
    TResult? Function()? finished,
  }) {
    return paused?.call(remainingTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration remainingTime)? ongoing,
    TResult Function(Duration remainingTime)? paused,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(remainingTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerInitial value) initial,
    required TResult Function(TimerOngoing value) ongoing,
    required TResult Function(TimerPaused value) paused,
    required TResult Function(TimerFinished value) finished,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitial value)? initial,
    TResult? Function(TimerOngoing value)? ongoing,
    TResult? Function(TimerPaused value)? paused,
    TResult? Function(TimerFinished value)? finished,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitial value)? initial,
    TResult Function(TimerOngoing value)? ongoing,
    TResult Function(TimerPaused value)? paused,
    TResult Function(TimerFinished value)? finished,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class TimerPaused implements TimerState {
  const factory TimerPaused({required final Duration remainingTime}) =
      _$TimerPausedImpl;

  Duration get remainingTime;

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimerPausedImplCopyWith<_$TimerPausedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerFinishedImplCopyWith<$Res> {
  factory _$$TimerFinishedImplCopyWith(
          _$TimerFinishedImpl value, $Res Function(_$TimerFinishedImpl) then) =
      __$$TimerFinishedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerFinishedImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerFinishedImpl>
    implements _$$TimerFinishedImplCopyWith<$Res> {
  __$$TimerFinishedImplCopyWithImpl(
      _$TimerFinishedImpl _value, $Res Function(_$TimerFinishedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TimerFinishedImpl implements TimerFinished {
  const _$TimerFinishedImpl();

  @override
  String toString() {
    return 'TimerState.finished()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerFinishedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration remainingTime) ongoing,
    required TResult Function(Duration remainingTime) paused,
    required TResult Function() finished,
  }) {
    return finished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Duration remainingTime)? ongoing,
    TResult? Function(Duration remainingTime)? paused,
    TResult? Function()? finished,
  }) {
    return finished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration remainingTime)? ongoing,
    TResult Function(Duration remainingTime)? paused,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerInitial value) initial,
    required TResult Function(TimerOngoing value) ongoing,
    required TResult Function(TimerPaused value) paused,
    required TResult Function(TimerFinished value) finished,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitial value)? initial,
    TResult? Function(TimerOngoing value)? ongoing,
    TResult? Function(TimerPaused value)? paused,
    TResult? Function(TimerFinished value)? finished,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitial value)? initial,
    TResult Function(TimerOngoing value)? ongoing,
    TResult Function(TimerPaused value)? paused,
    TResult Function(TimerFinished value)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class TimerFinished implements TimerState {
  const factory TimerFinished() = _$TimerFinishedImpl;
}
