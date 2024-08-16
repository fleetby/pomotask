// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateTaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) load,
    required TResult Function(String title) setTitle,
    required TResult Function(String description) setDescription,
    required TResult Function(TaskPriority priority) setPriority,
    required TResult Function(int pomodoroCount) setPomodoroCount,
    required TResult Function() increasePomodoroCount,
    required TResult Function() decreasePomodoroCount,
    required TResult Function() updateEstPomodoroDuration,
    required TResult Function() perform,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? load,
    TResult? Function(String title)? setTitle,
    TResult? Function(String description)? setDescription,
    TResult? Function(TaskPriority priority)? setPriority,
    TResult? Function(int pomodoroCount)? setPomodoroCount,
    TResult? Function()? increasePomodoroCount,
    TResult? Function()? decreasePomodoroCount,
    TResult? Function()? updateEstPomodoroDuration,
    TResult? Function()? perform,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? load,
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(TaskPriority priority)? setPriority,
    TResult Function(int pomodoroCount)? setPomodoroCount,
    TResult Function()? increasePomodoroCount,
    TResult Function()? decreasePomodoroCount,
    TResult Function()? updateEstPomodoroDuration,
    TResult Function()? perform,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTaskLoad value) load,
    required TResult Function(CreateTaskSetTitle value) setTitle,
    required TResult Function(CreateTaskSetDescription value) setDescription,
    required TResult Function(CreateTaskSetPriority value) setPriority,
    required TResult Function(CreateTaskSetPomodoroCount value)
        setPomodoroCount,
    required TResult Function(CreateTaskIncreasePomodoroCount value)
        increasePomodoroCount,
    required TResult Function(CreateTaskDecreasePomodoroCount value)
        decreasePomodoroCount,
    required TResult Function(CreateTaskUpdateEstPomodoroDuration value)
        updateEstPomodoroDuration,
    required TResult Function(CreateTaskPerform value) perform,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTaskLoad value)? load,
    TResult? Function(CreateTaskSetTitle value)? setTitle,
    TResult? Function(CreateTaskSetDescription value)? setDescription,
    TResult? Function(CreateTaskSetPriority value)? setPriority,
    TResult? Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult? Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult? Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult? Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult? Function(CreateTaskPerform value)? perform,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskLoad value)? load,
    TResult Function(CreateTaskSetTitle value)? setTitle,
    TResult Function(CreateTaskSetDescription value)? setDescription,
    TResult Function(CreateTaskSetPriority value)? setPriority,
    TResult Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult Function(CreateTaskPerform value)? perform,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskEventCopyWith<$Res> {
  factory $CreateTaskEventCopyWith(
          CreateTaskEvent value, $Res Function(CreateTaskEvent) then) =
      _$CreateTaskEventCopyWithImpl<$Res, CreateTaskEvent>;
}

/// @nodoc
class _$CreateTaskEventCopyWithImpl<$Res, $Val extends CreateTaskEvent>
    implements $CreateTaskEventCopyWith<$Res> {
  _$CreateTaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CreateTaskLoadImplCopyWith<$Res> {
  factory _$$CreateTaskLoadImplCopyWith(_$CreateTaskLoadImpl value,
          $Res Function(_$CreateTaskLoadImpl) then) =
      __$$CreateTaskLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int taskId});
}

/// @nodoc
class __$$CreateTaskLoadImplCopyWithImpl<$Res>
    extends _$CreateTaskEventCopyWithImpl<$Res, _$CreateTaskLoadImpl>
    implements _$$CreateTaskLoadImplCopyWith<$Res> {
  __$$CreateTaskLoadImplCopyWithImpl(
      _$CreateTaskLoadImpl _value, $Res Function(_$CreateTaskLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$CreateTaskLoadImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateTaskLoadImpl implements CreateTaskLoad {
  const _$CreateTaskLoadImpl({required this.taskId});

  @override
  final int taskId;

  @override
  String toString() {
    return 'CreateTaskEvent.load(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskLoadImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskLoadImplCopyWith<_$CreateTaskLoadImpl> get copyWith =>
      __$$CreateTaskLoadImplCopyWithImpl<_$CreateTaskLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) load,
    required TResult Function(String title) setTitle,
    required TResult Function(String description) setDescription,
    required TResult Function(TaskPriority priority) setPriority,
    required TResult Function(int pomodoroCount) setPomodoroCount,
    required TResult Function() increasePomodoroCount,
    required TResult Function() decreasePomodoroCount,
    required TResult Function() updateEstPomodoroDuration,
    required TResult Function() perform,
  }) {
    return load(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? load,
    TResult? Function(String title)? setTitle,
    TResult? Function(String description)? setDescription,
    TResult? Function(TaskPriority priority)? setPriority,
    TResult? Function(int pomodoroCount)? setPomodoroCount,
    TResult? Function()? increasePomodoroCount,
    TResult? Function()? decreasePomodoroCount,
    TResult? Function()? updateEstPomodoroDuration,
    TResult? Function()? perform,
  }) {
    return load?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? load,
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(TaskPriority priority)? setPriority,
    TResult Function(int pomodoroCount)? setPomodoroCount,
    TResult Function()? increasePomodoroCount,
    TResult Function()? decreasePomodoroCount,
    TResult Function()? updateEstPomodoroDuration,
    TResult Function()? perform,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTaskLoad value) load,
    required TResult Function(CreateTaskSetTitle value) setTitle,
    required TResult Function(CreateTaskSetDescription value) setDescription,
    required TResult Function(CreateTaskSetPriority value) setPriority,
    required TResult Function(CreateTaskSetPomodoroCount value)
        setPomodoroCount,
    required TResult Function(CreateTaskIncreasePomodoroCount value)
        increasePomodoroCount,
    required TResult Function(CreateTaskDecreasePomodoroCount value)
        decreasePomodoroCount,
    required TResult Function(CreateTaskUpdateEstPomodoroDuration value)
        updateEstPomodoroDuration,
    required TResult Function(CreateTaskPerform value) perform,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTaskLoad value)? load,
    TResult? Function(CreateTaskSetTitle value)? setTitle,
    TResult? Function(CreateTaskSetDescription value)? setDescription,
    TResult? Function(CreateTaskSetPriority value)? setPriority,
    TResult? Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult? Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult? Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult? Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult? Function(CreateTaskPerform value)? perform,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskLoad value)? load,
    TResult Function(CreateTaskSetTitle value)? setTitle,
    TResult Function(CreateTaskSetDescription value)? setDescription,
    TResult Function(CreateTaskSetPriority value)? setPriority,
    TResult Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult Function(CreateTaskPerform value)? perform,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class CreateTaskLoad implements CreateTaskEvent {
  const factory CreateTaskLoad({required final int taskId}) =
      _$CreateTaskLoadImpl;

  int get taskId;

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskLoadImplCopyWith<_$CreateTaskLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateTaskSetTitleImplCopyWith<$Res> {
  factory _$$CreateTaskSetTitleImplCopyWith(_$CreateTaskSetTitleImpl value,
          $Res Function(_$CreateTaskSetTitleImpl) then) =
      __$$CreateTaskSetTitleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$CreateTaskSetTitleImplCopyWithImpl<$Res>
    extends _$CreateTaskEventCopyWithImpl<$Res, _$CreateTaskSetTitleImpl>
    implements _$$CreateTaskSetTitleImplCopyWith<$Res> {
  __$$CreateTaskSetTitleImplCopyWithImpl(_$CreateTaskSetTitleImpl _value,
      $Res Function(_$CreateTaskSetTitleImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$CreateTaskSetTitleImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateTaskSetTitleImpl implements CreateTaskSetTitle {
  const _$CreateTaskSetTitleImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'CreateTaskEvent.setTitle(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskSetTitleImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskSetTitleImplCopyWith<_$CreateTaskSetTitleImpl> get copyWith =>
      __$$CreateTaskSetTitleImplCopyWithImpl<_$CreateTaskSetTitleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) load,
    required TResult Function(String title) setTitle,
    required TResult Function(String description) setDescription,
    required TResult Function(TaskPriority priority) setPriority,
    required TResult Function(int pomodoroCount) setPomodoroCount,
    required TResult Function() increasePomodoroCount,
    required TResult Function() decreasePomodoroCount,
    required TResult Function() updateEstPomodoroDuration,
    required TResult Function() perform,
  }) {
    return setTitle(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? load,
    TResult? Function(String title)? setTitle,
    TResult? Function(String description)? setDescription,
    TResult? Function(TaskPriority priority)? setPriority,
    TResult? Function(int pomodoroCount)? setPomodoroCount,
    TResult? Function()? increasePomodoroCount,
    TResult? Function()? decreasePomodoroCount,
    TResult? Function()? updateEstPomodoroDuration,
    TResult? Function()? perform,
  }) {
    return setTitle?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? load,
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(TaskPriority priority)? setPriority,
    TResult Function(int pomodoroCount)? setPomodoroCount,
    TResult Function()? increasePomodoroCount,
    TResult Function()? decreasePomodoroCount,
    TResult Function()? updateEstPomodoroDuration,
    TResult Function()? perform,
    required TResult orElse(),
  }) {
    if (setTitle != null) {
      return setTitle(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTaskLoad value) load,
    required TResult Function(CreateTaskSetTitle value) setTitle,
    required TResult Function(CreateTaskSetDescription value) setDescription,
    required TResult Function(CreateTaskSetPriority value) setPriority,
    required TResult Function(CreateTaskSetPomodoroCount value)
        setPomodoroCount,
    required TResult Function(CreateTaskIncreasePomodoroCount value)
        increasePomodoroCount,
    required TResult Function(CreateTaskDecreasePomodoroCount value)
        decreasePomodoroCount,
    required TResult Function(CreateTaskUpdateEstPomodoroDuration value)
        updateEstPomodoroDuration,
    required TResult Function(CreateTaskPerform value) perform,
  }) {
    return setTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTaskLoad value)? load,
    TResult? Function(CreateTaskSetTitle value)? setTitle,
    TResult? Function(CreateTaskSetDescription value)? setDescription,
    TResult? Function(CreateTaskSetPriority value)? setPriority,
    TResult? Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult? Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult? Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult? Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult? Function(CreateTaskPerform value)? perform,
  }) {
    return setTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskLoad value)? load,
    TResult Function(CreateTaskSetTitle value)? setTitle,
    TResult Function(CreateTaskSetDescription value)? setDescription,
    TResult Function(CreateTaskSetPriority value)? setPriority,
    TResult Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult Function(CreateTaskPerform value)? perform,
    required TResult orElse(),
  }) {
    if (setTitle != null) {
      return setTitle(this);
    }
    return orElse();
  }
}

abstract class CreateTaskSetTitle implements CreateTaskEvent {
  const factory CreateTaskSetTitle(final String title) =
      _$CreateTaskSetTitleImpl;

  String get title;

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskSetTitleImplCopyWith<_$CreateTaskSetTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateTaskSetDescriptionImplCopyWith<$Res> {
  factory _$$CreateTaskSetDescriptionImplCopyWith(
          _$CreateTaskSetDescriptionImpl value,
          $Res Function(_$CreateTaskSetDescriptionImpl) then) =
      __$$CreateTaskSetDescriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$CreateTaskSetDescriptionImplCopyWithImpl<$Res>
    extends _$CreateTaskEventCopyWithImpl<$Res, _$CreateTaskSetDescriptionImpl>
    implements _$$CreateTaskSetDescriptionImplCopyWith<$Res> {
  __$$CreateTaskSetDescriptionImplCopyWithImpl(
      _$CreateTaskSetDescriptionImpl _value,
      $Res Function(_$CreateTaskSetDescriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$CreateTaskSetDescriptionImpl(
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateTaskSetDescriptionImpl implements CreateTaskSetDescription {
  const _$CreateTaskSetDescriptionImpl(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'CreateTaskEvent.setDescription(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskSetDescriptionImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskSetDescriptionImplCopyWith<_$CreateTaskSetDescriptionImpl>
      get copyWith => __$$CreateTaskSetDescriptionImplCopyWithImpl<
          _$CreateTaskSetDescriptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) load,
    required TResult Function(String title) setTitle,
    required TResult Function(String description) setDescription,
    required TResult Function(TaskPriority priority) setPriority,
    required TResult Function(int pomodoroCount) setPomodoroCount,
    required TResult Function() increasePomodoroCount,
    required TResult Function() decreasePomodoroCount,
    required TResult Function() updateEstPomodoroDuration,
    required TResult Function() perform,
  }) {
    return setDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? load,
    TResult? Function(String title)? setTitle,
    TResult? Function(String description)? setDescription,
    TResult? Function(TaskPriority priority)? setPriority,
    TResult? Function(int pomodoroCount)? setPomodoroCount,
    TResult? Function()? increasePomodoroCount,
    TResult? Function()? decreasePomodoroCount,
    TResult? Function()? updateEstPomodoroDuration,
    TResult? Function()? perform,
  }) {
    return setDescription?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? load,
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(TaskPriority priority)? setPriority,
    TResult Function(int pomodoroCount)? setPomodoroCount,
    TResult Function()? increasePomodoroCount,
    TResult Function()? decreasePomodoroCount,
    TResult Function()? updateEstPomodoroDuration,
    TResult Function()? perform,
    required TResult orElse(),
  }) {
    if (setDescription != null) {
      return setDescription(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTaskLoad value) load,
    required TResult Function(CreateTaskSetTitle value) setTitle,
    required TResult Function(CreateTaskSetDescription value) setDescription,
    required TResult Function(CreateTaskSetPriority value) setPriority,
    required TResult Function(CreateTaskSetPomodoroCount value)
        setPomodoroCount,
    required TResult Function(CreateTaskIncreasePomodoroCount value)
        increasePomodoroCount,
    required TResult Function(CreateTaskDecreasePomodoroCount value)
        decreasePomodoroCount,
    required TResult Function(CreateTaskUpdateEstPomodoroDuration value)
        updateEstPomodoroDuration,
    required TResult Function(CreateTaskPerform value) perform,
  }) {
    return setDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTaskLoad value)? load,
    TResult? Function(CreateTaskSetTitle value)? setTitle,
    TResult? Function(CreateTaskSetDescription value)? setDescription,
    TResult? Function(CreateTaskSetPriority value)? setPriority,
    TResult? Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult? Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult? Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult? Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult? Function(CreateTaskPerform value)? perform,
  }) {
    return setDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskLoad value)? load,
    TResult Function(CreateTaskSetTitle value)? setTitle,
    TResult Function(CreateTaskSetDescription value)? setDescription,
    TResult Function(CreateTaskSetPriority value)? setPriority,
    TResult Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult Function(CreateTaskPerform value)? perform,
    required TResult orElse(),
  }) {
    if (setDescription != null) {
      return setDescription(this);
    }
    return orElse();
  }
}

abstract class CreateTaskSetDescription implements CreateTaskEvent {
  const factory CreateTaskSetDescription(final String description) =
      _$CreateTaskSetDescriptionImpl;

  String get description;

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskSetDescriptionImplCopyWith<_$CreateTaskSetDescriptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateTaskSetPriorityImplCopyWith<$Res> {
  factory _$$CreateTaskSetPriorityImplCopyWith(
          _$CreateTaskSetPriorityImpl value,
          $Res Function(_$CreateTaskSetPriorityImpl) then) =
      __$$CreateTaskSetPriorityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskPriority priority});
}

/// @nodoc
class __$$CreateTaskSetPriorityImplCopyWithImpl<$Res>
    extends _$CreateTaskEventCopyWithImpl<$Res, _$CreateTaskSetPriorityImpl>
    implements _$$CreateTaskSetPriorityImplCopyWith<$Res> {
  __$$CreateTaskSetPriorityImplCopyWithImpl(_$CreateTaskSetPriorityImpl _value,
      $Res Function(_$CreateTaskSetPriorityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priority = null,
  }) {
    return _then(_$CreateTaskSetPriorityImpl(
      null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TaskPriority,
    ));
  }
}

/// @nodoc

class _$CreateTaskSetPriorityImpl implements CreateTaskSetPriority {
  const _$CreateTaskSetPriorityImpl(this.priority);

  @override
  final TaskPriority priority;

  @override
  String toString() {
    return 'CreateTaskEvent.setPriority(priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskSetPriorityImpl &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @override
  int get hashCode => Object.hash(runtimeType, priority);

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskSetPriorityImplCopyWith<_$CreateTaskSetPriorityImpl>
      get copyWith => __$$CreateTaskSetPriorityImplCopyWithImpl<
          _$CreateTaskSetPriorityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) load,
    required TResult Function(String title) setTitle,
    required TResult Function(String description) setDescription,
    required TResult Function(TaskPriority priority) setPriority,
    required TResult Function(int pomodoroCount) setPomodoroCount,
    required TResult Function() increasePomodoroCount,
    required TResult Function() decreasePomodoroCount,
    required TResult Function() updateEstPomodoroDuration,
    required TResult Function() perform,
  }) {
    return setPriority(priority);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? load,
    TResult? Function(String title)? setTitle,
    TResult? Function(String description)? setDescription,
    TResult? Function(TaskPriority priority)? setPriority,
    TResult? Function(int pomodoroCount)? setPomodoroCount,
    TResult? Function()? increasePomodoroCount,
    TResult? Function()? decreasePomodoroCount,
    TResult? Function()? updateEstPomodoroDuration,
    TResult? Function()? perform,
  }) {
    return setPriority?.call(priority);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? load,
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(TaskPriority priority)? setPriority,
    TResult Function(int pomodoroCount)? setPomodoroCount,
    TResult Function()? increasePomodoroCount,
    TResult Function()? decreasePomodoroCount,
    TResult Function()? updateEstPomodoroDuration,
    TResult Function()? perform,
    required TResult orElse(),
  }) {
    if (setPriority != null) {
      return setPriority(priority);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTaskLoad value) load,
    required TResult Function(CreateTaskSetTitle value) setTitle,
    required TResult Function(CreateTaskSetDescription value) setDescription,
    required TResult Function(CreateTaskSetPriority value) setPriority,
    required TResult Function(CreateTaskSetPomodoroCount value)
        setPomodoroCount,
    required TResult Function(CreateTaskIncreasePomodoroCount value)
        increasePomodoroCount,
    required TResult Function(CreateTaskDecreasePomodoroCount value)
        decreasePomodoroCount,
    required TResult Function(CreateTaskUpdateEstPomodoroDuration value)
        updateEstPomodoroDuration,
    required TResult Function(CreateTaskPerform value) perform,
  }) {
    return setPriority(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTaskLoad value)? load,
    TResult? Function(CreateTaskSetTitle value)? setTitle,
    TResult? Function(CreateTaskSetDescription value)? setDescription,
    TResult? Function(CreateTaskSetPriority value)? setPriority,
    TResult? Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult? Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult? Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult? Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult? Function(CreateTaskPerform value)? perform,
  }) {
    return setPriority?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskLoad value)? load,
    TResult Function(CreateTaskSetTitle value)? setTitle,
    TResult Function(CreateTaskSetDescription value)? setDescription,
    TResult Function(CreateTaskSetPriority value)? setPriority,
    TResult Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult Function(CreateTaskPerform value)? perform,
    required TResult orElse(),
  }) {
    if (setPriority != null) {
      return setPriority(this);
    }
    return orElse();
  }
}

abstract class CreateTaskSetPriority implements CreateTaskEvent {
  const factory CreateTaskSetPriority(final TaskPriority priority) =
      _$CreateTaskSetPriorityImpl;

  TaskPriority get priority;

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskSetPriorityImplCopyWith<_$CreateTaskSetPriorityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateTaskSetPomodoroCountImplCopyWith<$Res> {
  factory _$$CreateTaskSetPomodoroCountImplCopyWith(
          _$CreateTaskSetPomodoroCountImpl value,
          $Res Function(_$CreateTaskSetPomodoroCountImpl) then) =
      __$$CreateTaskSetPomodoroCountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int pomodoroCount});
}

/// @nodoc
class __$$CreateTaskSetPomodoroCountImplCopyWithImpl<$Res>
    extends _$CreateTaskEventCopyWithImpl<$Res,
        _$CreateTaskSetPomodoroCountImpl>
    implements _$$CreateTaskSetPomodoroCountImplCopyWith<$Res> {
  __$$CreateTaskSetPomodoroCountImplCopyWithImpl(
      _$CreateTaskSetPomodoroCountImpl _value,
      $Res Function(_$CreateTaskSetPomodoroCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pomodoroCount = null,
  }) {
    return _then(_$CreateTaskSetPomodoroCountImpl(
      null == pomodoroCount
          ? _value.pomodoroCount
          : pomodoroCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateTaskSetPomodoroCountImpl implements CreateTaskSetPomodoroCount {
  const _$CreateTaskSetPomodoroCountImpl(this.pomodoroCount);

  @override
  final int pomodoroCount;

  @override
  String toString() {
    return 'CreateTaskEvent.setPomodoroCount(pomodoroCount: $pomodoroCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskSetPomodoroCountImpl &&
            (identical(other.pomodoroCount, pomodoroCount) ||
                other.pomodoroCount == pomodoroCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pomodoroCount);

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskSetPomodoroCountImplCopyWith<_$CreateTaskSetPomodoroCountImpl>
      get copyWith => __$$CreateTaskSetPomodoroCountImplCopyWithImpl<
          _$CreateTaskSetPomodoroCountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) load,
    required TResult Function(String title) setTitle,
    required TResult Function(String description) setDescription,
    required TResult Function(TaskPriority priority) setPriority,
    required TResult Function(int pomodoroCount) setPomodoroCount,
    required TResult Function() increasePomodoroCount,
    required TResult Function() decreasePomodoroCount,
    required TResult Function() updateEstPomodoroDuration,
    required TResult Function() perform,
  }) {
    return setPomodoroCount(pomodoroCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? load,
    TResult? Function(String title)? setTitle,
    TResult? Function(String description)? setDescription,
    TResult? Function(TaskPriority priority)? setPriority,
    TResult? Function(int pomodoroCount)? setPomodoroCount,
    TResult? Function()? increasePomodoroCount,
    TResult? Function()? decreasePomodoroCount,
    TResult? Function()? updateEstPomodoroDuration,
    TResult? Function()? perform,
  }) {
    return setPomodoroCount?.call(pomodoroCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? load,
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(TaskPriority priority)? setPriority,
    TResult Function(int pomodoroCount)? setPomodoroCount,
    TResult Function()? increasePomodoroCount,
    TResult Function()? decreasePomodoroCount,
    TResult Function()? updateEstPomodoroDuration,
    TResult Function()? perform,
    required TResult orElse(),
  }) {
    if (setPomodoroCount != null) {
      return setPomodoroCount(pomodoroCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTaskLoad value) load,
    required TResult Function(CreateTaskSetTitle value) setTitle,
    required TResult Function(CreateTaskSetDescription value) setDescription,
    required TResult Function(CreateTaskSetPriority value) setPriority,
    required TResult Function(CreateTaskSetPomodoroCount value)
        setPomodoroCount,
    required TResult Function(CreateTaskIncreasePomodoroCount value)
        increasePomodoroCount,
    required TResult Function(CreateTaskDecreasePomodoroCount value)
        decreasePomodoroCount,
    required TResult Function(CreateTaskUpdateEstPomodoroDuration value)
        updateEstPomodoroDuration,
    required TResult Function(CreateTaskPerform value) perform,
  }) {
    return setPomodoroCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTaskLoad value)? load,
    TResult? Function(CreateTaskSetTitle value)? setTitle,
    TResult? Function(CreateTaskSetDescription value)? setDescription,
    TResult? Function(CreateTaskSetPriority value)? setPriority,
    TResult? Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult? Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult? Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult? Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult? Function(CreateTaskPerform value)? perform,
  }) {
    return setPomodoroCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskLoad value)? load,
    TResult Function(CreateTaskSetTitle value)? setTitle,
    TResult Function(CreateTaskSetDescription value)? setDescription,
    TResult Function(CreateTaskSetPriority value)? setPriority,
    TResult Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult Function(CreateTaskPerform value)? perform,
    required TResult orElse(),
  }) {
    if (setPomodoroCount != null) {
      return setPomodoroCount(this);
    }
    return orElse();
  }
}

abstract class CreateTaskSetPomodoroCount implements CreateTaskEvent {
  const factory CreateTaskSetPomodoroCount(final int pomodoroCount) =
      _$CreateTaskSetPomodoroCountImpl;

  int get pomodoroCount;

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskSetPomodoroCountImplCopyWith<_$CreateTaskSetPomodoroCountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateTaskIncreasePomodoroCountImplCopyWith<$Res> {
  factory _$$CreateTaskIncreasePomodoroCountImplCopyWith(
          _$CreateTaskIncreasePomodoroCountImpl value,
          $Res Function(_$CreateTaskIncreasePomodoroCountImpl) then) =
      __$$CreateTaskIncreasePomodoroCountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateTaskIncreasePomodoroCountImplCopyWithImpl<$Res>
    extends _$CreateTaskEventCopyWithImpl<$Res,
        _$CreateTaskIncreasePomodoroCountImpl>
    implements _$$CreateTaskIncreasePomodoroCountImplCopyWith<$Res> {
  __$$CreateTaskIncreasePomodoroCountImplCopyWithImpl(
      _$CreateTaskIncreasePomodoroCountImpl _value,
      $Res Function(_$CreateTaskIncreasePomodoroCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateTaskIncreasePomodoroCountImpl
    implements CreateTaskIncreasePomodoroCount {
  const _$CreateTaskIncreasePomodoroCountImpl();

  @override
  String toString() {
    return 'CreateTaskEvent.increasePomodoroCount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskIncreasePomodoroCountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) load,
    required TResult Function(String title) setTitle,
    required TResult Function(String description) setDescription,
    required TResult Function(TaskPriority priority) setPriority,
    required TResult Function(int pomodoroCount) setPomodoroCount,
    required TResult Function() increasePomodoroCount,
    required TResult Function() decreasePomodoroCount,
    required TResult Function() updateEstPomodoroDuration,
    required TResult Function() perform,
  }) {
    return increasePomodoroCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? load,
    TResult? Function(String title)? setTitle,
    TResult? Function(String description)? setDescription,
    TResult? Function(TaskPriority priority)? setPriority,
    TResult? Function(int pomodoroCount)? setPomodoroCount,
    TResult? Function()? increasePomodoroCount,
    TResult? Function()? decreasePomodoroCount,
    TResult? Function()? updateEstPomodoroDuration,
    TResult? Function()? perform,
  }) {
    return increasePomodoroCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? load,
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(TaskPriority priority)? setPriority,
    TResult Function(int pomodoroCount)? setPomodoroCount,
    TResult Function()? increasePomodoroCount,
    TResult Function()? decreasePomodoroCount,
    TResult Function()? updateEstPomodoroDuration,
    TResult Function()? perform,
    required TResult orElse(),
  }) {
    if (increasePomodoroCount != null) {
      return increasePomodoroCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTaskLoad value) load,
    required TResult Function(CreateTaskSetTitle value) setTitle,
    required TResult Function(CreateTaskSetDescription value) setDescription,
    required TResult Function(CreateTaskSetPriority value) setPriority,
    required TResult Function(CreateTaskSetPomodoroCount value)
        setPomodoroCount,
    required TResult Function(CreateTaskIncreasePomodoroCount value)
        increasePomodoroCount,
    required TResult Function(CreateTaskDecreasePomodoroCount value)
        decreasePomodoroCount,
    required TResult Function(CreateTaskUpdateEstPomodoroDuration value)
        updateEstPomodoroDuration,
    required TResult Function(CreateTaskPerform value) perform,
  }) {
    return increasePomodoroCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTaskLoad value)? load,
    TResult? Function(CreateTaskSetTitle value)? setTitle,
    TResult? Function(CreateTaskSetDescription value)? setDescription,
    TResult? Function(CreateTaskSetPriority value)? setPriority,
    TResult? Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult? Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult? Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult? Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult? Function(CreateTaskPerform value)? perform,
  }) {
    return increasePomodoroCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskLoad value)? load,
    TResult Function(CreateTaskSetTitle value)? setTitle,
    TResult Function(CreateTaskSetDescription value)? setDescription,
    TResult Function(CreateTaskSetPriority value)? setPriority,
    TResult Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult Function(CreateTaskPerform value)? perform,
    required TResult orElse(),
  }) {
    if (increasePomodoroCount != null) {
      return increasePomodoroCount(this);
    }
    return orElse();
  }
}

abstract class CreateTaskIncreasePomodoroCount implements CreateTaskEvent {
  const factory CreateTaskIncreasePomodoroCount() =
      _$CreateTaskIncreasePomodoroCountImpl;
}

/// @nodoc
abstract class _$$CreateTaskDecreasePomodoroCountImplCopyWith<$Res> {
  factory _$$CreateTaskDecreasePomodoroCountImplCopyWith(
          _$CreateTaskDecreasePomodoroCountImpl value,
          $Res Function(_$CreateTaskDecreasePomodoroCountImpl) then) =
      __$$CreateTaskDecreasePomodoroCountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateTaskDecreasePomodoroCountImplCopyWithImpl<$Res>
    extends _$CreateTaskEventCopyWithImpl<$Res,
        _$CreateTaskDecreasePomodoroCountImpl>
    implements _$$CreateTaskDecreasePomodoroCountImplCopyWith<$Res> {
  __$$CreateTaskDecreasePomodoroCountImplCopyWithImpl(
      _$CreateTaskDecreasePomodoroCountImpl _value,
      $Res Function(_$CreateTaskDecreasePomodoroCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateTaskDecreasePomodoroCountImpl
    implements CreateTaskDecreasePomodoroCount {
  const _$CreateTaskDecreasePomodoroCountImpl();

  @override
  String toString() {
    return 'CreateTaskEvent.decreasePomodoroCount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskDecreasePomodoroCountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) load,
    required TResult Function(String title) setTitle,
    required TResult Function(String description) setDescription,
    required TResult Function(TaskPriority priority) setPriority,
    required TResult Function(int pomodoroCount) setPomodoroCount,
    required TResult Function() increasePomodoroCount,
    required TResult Function() decreasePomodoroCount,
    required TResult Function() updateEstPomodoroDuration,
    required TResult Function() perform,
  }) {
    return decreasePomodoroCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? load,
    TResult? Function(String title)? setTitle,
    TResult? Function(String description)? setDescription,
    TResult? Function(TaskPriority priority)? setPriority,
    TResult? Function(int pomodoroCount)? setPomodoroCount,
    TResult? Function()? increasePomodoroCount,
    TResult? Function()? decreasePomodoroCount,
    TResult? Function()? updateEstPomodoroDuration,
    TResult? Function()? perform,
  }) {
    return decreasePomodoroCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? load,
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(TaskPriority priority)? setPriority,
    TResult Function(int pomodoroCount)? setPomodoroCount,
    TResult Function()? increasePomodoroCount,
    TResult Function()? decreasePomodoroCount,
    TResult Function()? updateEstPomodoroDuration,
    TResult Function()? perform,
    required TResult orElse(),
  }) {
    if (decreasePomodoroCount != null) {
      return decreasePomodoroCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTaskLoad value) load,
    required TResult Function(CreateTaskSetTitle value) setTitle,
    required TResult Function(CreateTaskSetDescription value) setDescription,
    required TResult Function(CreateTaskSetPriority value) setPriority,
    required TResult Function(CreateTaskSetPomodoroCount value)
        setPomodoroCount,
    required TResult Function(CreateTaskIncreasePomodoroCount value)
        increasePomodoroCount,
    required TResult Function(CreateTaskDecreasePomodoroCount value)
        decreasePomodoroCount,
    required TResult Function(CreateTaskUpdateEstPomodoroDuration value)
        updateEstPomodoroDuration,
    required TResult Function(CreateTaskPerform value) perform,
  }) {
    return decreasePomodoroCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTaskLoad value)? load,
    TResult? Function(CreateTaskSetTitle value)? setTitle,
    TResult? Function(CreateTaskSetDescription value)? setDescription,
    TResult? Function(CreateTaskSetPriority value)? setPriority,
    TResult? Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult? Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult? Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult? Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult? Function(CreateTaskPerform value)? perform,
  }) {
    return decreasePomodoroCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskLoad value)? load,
    TResult Function(CreateTaskSetTitle value)? setTitle,
    TResult Function(CreateTaskSetDescription value)? setDescription,
    TResult Function(CreateTaskSetPriority value)? setPriority,
    TResult Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult Function(CreateTaskPerform value)? perform,
    required TResult orElse(),
  }) {
    if (decreasePomodoroCount != null) {
      return decreasePomodoroCount(this);
    }
    return orElse();
  }
}

abstract class CreateTaskDecreasePomodoroCount implements CreateTaskEvent {
  const factory CreateTaskDecreasePomodoroCount() =
      _$CreateTaskDecreasePomodoroCountImpl;
}

/// @nodoc
abstract class _$$CreateTaskUpdateEstPomodoroDurationImplCopyWith<$Res> {
  factory _$$CreateTaskUpdateEstPomodoroDurationImplCopyWith(
          _$CreateTaskUpdateEstPomodoroDurationImpl value,
          $Res Function(_$CreateTaskUpdateEstPomodoroDurationImpl) then) =
      __$$CreateTaskUpdateEstPomodoroDurationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateTaskUpdateEstPomodoroDurationImplCopyWithImpl<$Res>
    extends _$CreateTaskEventCopyWithImpl<$Res,
        _$CreateTaskUpdateEstPomodoroDurationImpl>
    implements _$$CreateTaskUpdateEstPomodoroDurationImplCopyWith<$Res> {
  __$$CreateTaskUpdateEstPomodoroDurationImplCopyWithImpl(
      _$CreateTaskUpdateEstPomodoroDurationImpl _value,
      $Res Function(_$CreateTaskUpdateEstPomodoroDurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateTaskUpdateEstPomodoroDurationImpl
    implements CreateTaskUpdateEstPomodoroDuration {
  const _$CreateTaskUpdateEstPomodoroDurationImpl();

  @override
  String toString() {
    return 'CreateTaskEvent.updateEstPomodoroDuration()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskUpdateEstPomodoroDurationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) load,
    required TResult Function(String title) setTitle,
    required TResult Function(String description) setDescription,
    required TResult Function(TaskPriority priority) setPriority,
    required TResult Function(int pomodoroCount) setPomodoroCount,
    required TResult Function() increasePomodoroCount,
    required TResult Function() decreasePomodoroCount,
    required TResult Function() updateEstPomodoroDuration,
    required TResult Function() perform,
  }) {
    return updateEstPomodoroDuration();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? load,
    TResult? Function(String title)? setTitle,
    TResult? Function(String description)? setDescription,
    TResult? Function(TaskPriority priority)? setPriority,
    TResult? Function(int pomodoroCount)? setPomodoroCount,
    TResult? Function()? increasePomodoroCount,
    TResult? Function()? decreasePomodoroCount,
    TResult? Function()? updateEstPomodoroDuration,
    TResult? Function()? perform,
  }) {
    return updateEstPomodoroDuration?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? load,
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(TaskPriority priority)? setPriority,
    TResult Function(int pomodoroCount)? setPomodoroCount,
    TResult Function()? increasePomodoroCount,
    TResult Function()? decreasePomodoroCount,
    TResult Function()? updateEstPomodoroDuration,
    TResult Function()? perform,
    required TResult orElse(),
  }) {
    if (updateEstPomodoroDuration != null) {
      return updateEstPomodoroDuration();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTaskLoad value) load,
    required TResult Function(CreateTaskSetTitle value) setTitle,
    required TResult Function(CreateTaskSetDescription value) setDescription,
    required TResult Function(CreateTaskSetPriority value) setPriority,
    required TResult Function(CreateTaskSetPomodoroCount value)
        setPomodoroCount,
    required TResult Function(CreateTaskIncreasePomodoroCount value)
        increasePomodoroCount,
    required TResult Function(CreateTaskDecreasePomodoroCount value)
        decreasePomodoroCount,
    required TResult Function(CreateTaskUpdateEstPomodoroDuration value)
        updateEstPomodoroDuration,
    required TResult Function(CreateTaskPerform value) perform,
  }) {
    return updateEstPomodoroDuration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTaskLoad value)? load,
    TResult? Function(CreateTaskSetTitle value)? setTitle,
    TResult? Function(CreateTaskSetDescription value)? setDescription,
    TResult? Function(CreateTaskSetPriority value)? setPriority,
    TResult? Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult? Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult? Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult? Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult? Function(CreateTaskPerform value)? perform,
  }) {
    return updateEstPomodoroDuration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskLoad value)? load,
    TResult Function(CreateTaskSetTitle value)? setTitle,
    TResult Function(CreateTaskSetDescription value)? setDescription,
    TResult Function(CreateTaskSetPriority value)? setPriority,
    TResult Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult Function(CreateTaskPerform value)? perform,
    required TResult orElse(),
  }) {
    if (updateEstPomodoroDuration != null) {
      return updateEstPomodoroDuration(this);
    }
    return orElse();
  }
}

abstract class CreateTaskUpdateEstPomodoroDuration implements CreateTaskEvent {
  const factory CreateTaskUpdateEstPomodoroDuration() =
      _$CreateTaskUpdateEstPomodoroDurationImpl;
}

/// @nodoc
abstract class _$$CreateTaskPerformImplCopyWith<$Res> {
  factory _$$CreateTaskPerformImplCopyWith(_$CreateTaskPerformImpl value,
          $Res Function(_$CreateTaskPerformImpl) then) =
      __$$CreateTaskPerformImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateTaskPerformImplCopyWithImpl<$Res>
    extends _$CreateTaskEventCopyWithImpl<$Res, _$CreateTaskPerformImpl>
    implements _$$CreateTaskPerformImplCopyWith<$Res> {
  __$$CreateTaskPerformImplCopyWithImpl(_$CreateTaskPerformImpl _value,
      $Res Function(_$CreateTaskPerformImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateTaskPerformImpl implements CreateTaskPerform {
  const _$CreateTaskPerformImpl();

  @override
  String toString() {
    return 'CreateTaskEvent.perform()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateTaskPerformImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) load,
    required TResult Function(String title) setTitle,
    required TResult Function(String description) setDescription,
    required TResult Function(TaskPriority priority) setPriority,
    required TResult Function(int pomodoroCount) setPomodoroCount,
    required TResult Function() increasePomodoroCount,
    required TResult Function() decreasePomodoroCount,
    required TResult Function() updateEstPomodoroDuration,
    required TResult Function() perform,
  }) {
    return perform();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? load,
    TResult? Function(String title)? setTitle,
    TResult? Function(String description)? setDescription,
    TResult? Function(TaskPriority priority)? setPriority,
    TResult? Function(int pomodoroCount)? setPomodoroCount,
    TResult? Function()? increasePomodoroCount,
    TResult? Function()? decreasePomodoroCount,
    TResult? Function()? updateEstPomodoroDuration,
    TResult? Function()? perform,
  }) {
    return perform?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? load,
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(TaskPriority priority)? setPriority,
    TResult Function(int pomodoroCount)? setPomodoroCount,
    TResult Function()? increasePomodoroCount,
    TResult Function()? decreasePomodoroCount,
    TResult Function()? updateEstPomodoroDuration,
    TResult Function()? perform,
    required TResult orElse(),
  }) {
    if (perform != null) {
      return perform();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTaskLoad value) load,
    required TResult Function(CreateTaskSetTitle value) setTitle,
    required TResult Function(CreateTaskSetDescription value) setDescription,
    required TResult Function(CreateTaskSetPriority value) setPriority,
    required TResult Function(CreateTaskSetPomodoroCount value)
        setPomodoroCount,
    required TResult Function(CreateTaskIncreasePomodoroCount value)
        increasePomodoroCount,
    required TResult Function(CreateTaskDecreasePomodoroCount value)
        decreasePomodoroCount,
    required TResult Function(CreateTaskUpdateEstPomodoroDuration value)
        updateEstPomodoroDuration,
    required TResult Function(CreateTaskPerform value) perform,
  }) {
    return perform(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTaskLoad value)? load,
    TResult? Function(CreateTaskSetTitle value)? setTitle,
    TResult? Function(CreateTaskSetDescription value)? setDescription,
    TResult? Function(CreateTaskSetPriority value)? setPriority,
    TResult? Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult? Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult? Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult? Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult? Function(CreateTaskPerform value)? perform,
  }) {
    return perform?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskLoad value)? load,
    TResult Function(CreateTaskSetTitle value)? setTitle,
    TResult Function(CreateTaskSetDescription value)? setDescription,
    TResult Function(CreateTaskSetPriority value)? setPriority,
    TResult Function(CreateTaskSetPomodoroCount value)? setPomodoroCount,
    TResult Function(CreateTaskIncreasePomodoroCount value)?
        increasePomodoroCount,
    TResult Function(CreateTaskDecreasePomodoroCount value)?
        decreasePomodoroCount,
    TResult Function(CreateTaskUpdateEstPomodoroDuration value)?
        updateEstPomodoroDuration,
    TResult Function(CreateTaskPerform value)? perform,
    required TResult orElse(),
  }) {
    if (perform != null) {
      return perform(this);
    }
    return orElse();
  }
}

abstract class CreateTaskPerform implements CreateTaskEvent {
  const factory CreateTaskPerform() = _$CreateTaskPerformImpl;
}

/// @nodoc
mixin _$CreateTaskState {
  TaskModel? get task => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  TaskPriority get priority => throw _privateConstructorUsedError;
  int get pomodoroCount => throw _privateConstructorUsedError;
  OperationStatus get status => throw _privateConstructorUsedError;
  Duration get estPomodoroDuration => throw _privateConstructorUsedError;

  /// Create a copy of CreateTaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTaskStateCopyWith<CreateTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskStateCopyWith<$Res> {
  factory $CreateTaskStateCopyWith(
          CreateTaskState value, $Res Function(CreateTaskState) then) =
      _$CreateTaskStateCopyWithImpl<$Res, CreateTaskState>;
  @useResult
  $Res call(
      {TaskModel? task,
      String title,
      String description,
      TaskPriority priority,
      int pomodoroCount,
      OperationStatus status,
      Duration estPomodoroDuration});

  $TaskModelCopyWith<$Res>? get task;
}

/// @nodoc
class _$CreateTaskStateCopyWithImpl<$Res, $Val extends CreateTaskState>
    implements $CreateTaskStateCopyWith<$Res> {
  _$CreateTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = freezed,
    Object? title = null,
    Object? description = null,
    Object? priority = null,
    Object? pomodoroCount = null,
    Object? status = null,
    Object? estPomodoroDuration = null,
  }) {
    return _then(_value.copyWith(
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TaskPriority,
      pomodoroCount: null == pomodoroCount
          ? _value.pomodoroCount
          : pomodoroCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OperationStatus,
      estPomodoroDuration: null == estPomodoroDuration
          ? _value.estPomodoroDuration
          : estPomodoroDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }

  /// Create a copy of CreateTaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res>? get task {
    if (_value.task == null) {
      return null;
    }

    return $TaskModelCopyWith<$Res>(_value.task!, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateTaskStateImplCopyWith<$Res>
    implements $CreateTaskStateCopyWith<$Res> {
  factory _$$CreateTaskStateImplCopyWith(_$CreateTaskStateImpl value,
          $Res Function(_$CreateTaskStateImpl) then) =
      __$$CreateTaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TaskModel? task,
      String title,
      String description,
      TaskPriority priority,
      int pomodoroCount,
      OperationStatus status,
      Duration estPomodoroDuration});

  @override
  $TaskModelCopyWith<$Res>? get task;
}

/// @nodoc
class __$$CreateTaskStateImplCopyWithImpl<$Res>
    extends _$CreateTaskStateCopyWithImpl<$Res, _$CreateTaskStateImpl>
    implements _$$CreateTaskStateImplCopyWith<$Res> {
  __$$CreateTaskStateImplCopyWithImpl(
      _$CreateTaskStateImpl _value, $Res Function(_$CreateTaskStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = freezed,
    Object? title = null,
    Object? description = null,
    Object? priority = null,
    Object? pomodoroCount = null,
    Object? status = null,
    Object? estPomodoroDuration = null,
  }) {
    return _then(_$CreateTaskStateImpl(
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TaskPriority,
      pomodoroCount: null == pomodoroCount
          ? _value.pomodoroCount
          : pomodoroCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OperationStatus,
      estPomodoroDuration: null == estPomodoroDuration
          ? _value.estPomodoroDuration
          : estPomodoroDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$CreateTaskStateImpl implements _CreateTaskState {
  const _$CreateTaskStateImpl(
      {this.task,
      this.title = '',
      this.description = '',
      this.priority = TaskPriority.low,
      this.pomodoroCount = 1,
      this.status = OperationStatus.initial,
      this.estPomodoroDuration = Duration.zero});

  @override
  final TaskModel? task;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final TaskPriority priority;
  @override
  @JsonKey()
  final int pomodoroCount;
  @override
  @JsonKey()
  final OperationStatus status;
  @override
  @JsonKey()
  final Duration estPomodoroDuration;

  @override
  String toString() {
    return 'CreateTaskState(task: $task, title: $title, description: $description, priority: $priority, pomodoroCount: $pomodoroCount, status: $status, estPomodoroDuration: $estPomodoroDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskStateImpl &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.pomodoroCount, pomodoroCount) ||
                other.pomodoroCount == pomodoroCount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.estPomodoroDuration, estPomodoroDuration) ||
                other.estPomodoroDuration == estPomodoroDuration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, title, description,
      priority, pomodoroCount, status, estPomodoroDuration);

  /// Create a copy of CreateTaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskStateImplCopyWith<_$CreateTaskStateImpl> get copyWith =>
      __$$CreateTaskStateImplCopyWithImpl<_$CreateTaskStateImpl>(
          this, _$identity);
}

abstract class _CreateTaskState implements CreateTaskState {
  const factory _CreateTaskState(
      {final TaskModel? task,
      final String title,
      final String description,
      final TaskPriority priority,
      final int pomodoroCount,
      final OperationStatus status,
      final Duration estPomodoroDuration}) = _$CreateTaskStateImpl;

  @override
  TaskModel? get task;
  @override
  String get title;
  @override
  String get description;
  @override
  TaskPriority get priority;
  @override
  int get pomodoroCount;
  @override
  OperationStatus get status;
  @override
  Duration get estPomodoroDuration;

  /// Create a copy of CreateTaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskStateImplCopyWith<_$CreateTaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
