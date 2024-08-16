// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) load,
    required TResult Function(TaskModel task) set,
    required TResult Function() delete,
    required TResult Function() startOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? load,
    TResult? Function(TaskModel task)? set,
    TResult? Function()? delete,
    TResult? Function()? startOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? load,
    TResult Function(TaskModel task)? set,
    TResult Function()? delete,
    TResult Function()? startOver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailsLoad value) load,
    required TResult Function(TaskDetailsSet value) set,
    required TResult Function(TaskDetailsDelete value) delete,
    required TResult Function(TaskDetailsStartOver value) startOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailsLoad value)? load,
    TResult? Function(TaskDetailsSet value)? set,
    TResult? Function(TaskDetailsDelete value)? delete,
    TResult? Function(TaskDetailsStartOver value)? startOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailsLoad value)? load,
    TResult Function(TaskDetailsSet value)? set,
    TResult Function(TaskDetailsDelete value)? delete,
    TResult Function(TaskDetailsStartOver value)? startOver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDetailsEventCopyWith<$Res> {
  factory $TaskDetailsEventCopyWith(
          TaskDetailsEvent value, $Res Function(TaskDetailsEvent) then) =
      _$TaskDetailsEventCopyWithImpl<$Res, TaskDetailsEvent>;
}

/// @nodoc
class _$TaskDetailsEventCopyWithImpl<$Res, $Val extends TaskDetailsEvent>
    implements $TaskDetailsEventCopyWith<$Res> {
  _$TaskDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TaskDetailsLoadImplCopyWith<$Res> {
  factory _$$TaskDetailsLoadImplCopyWith(_$TaskDetailsLoadImpl value,
          $Res Function(_$TaskDetailsLoadImpl) then) =
      __$$TaskDetailsLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int taskId});
}

/// @nodoc
class __$$TaskDetailsLoadImplCopyWithImpl<$Res>
    extends _$TaskDetailsEventCopyWithImpl<$Res, _$TaskDetailsLoadImpl>
    implements _$$TaskDetailsLoadImplCopyWith<$Res> {
  __$$TaskDetailsLoadImplCopyWithImpl(
      _$TaskDetailsLoadImpl _value, $Res Function(_$TaskDetailsLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$TaskDetailsLoadImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TaskDetailsLoadImpl implements TaskDetailsLoad {
  const _$TaskDetailsLoadImpl({required this.taskId});

  @override
  final int taskId;

  @override
  String toString() {
    return 'TaskDetailsEvent.load(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailsLoadImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  /// Create a copy of TaskDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDetailsLoadImplCopyWith<_$TaskDetailsLoadImpl> get copyWith =>
      __$$TaskDetailsLoadImplCopyWithImpl<_$TaskDetailsLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) load,
    required TResult Function(TaskModel task) set,
    required TResult Function() delete,
    required TResult Function() startOver,
  }) {
    return load(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? load,
    TResult? Function(TaskModel task)? set,
    TResult? Function()? delete,
    TResult? Function()? startOver,
  }) {
    return load?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? load,
    TResult Function(TaskModel task)? set,
    TResult Function()? delete,
    TResult Function()? startOver,
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
    required TResult Function(TaskDetailsLoad value) load,
    required TResult Function(TaskDetailsSet value) set,
    required TResult Function(TaskDetailsDelete value) delete,
    required TResult Function(TaskDetailsStartOver value) startOver,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailsLoad value)? load,
    TResult? Function(TaskDetailsSet value)? set,
    TResult? Function(TaskDetailsDelete value)? delete,
    TResult? Function(TaskDetailsStartOver value)? startOver,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailsLoad value)? load,
    TResult Function(TaskDetailsSet value)? set,
    TResult Function(TaskDetailsDelete value)? delete,
    TResult Function(TaskDetailsStartOver value)? startOver,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class TaskDetailsLoad implements TaskDetailsEvent {
  const factory TaskDetailsLoad({required final int taskId}) =
      _$TaskDetailsLoadImpl;

  int get taskId;

  /// Create a copy of TaskDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskDetailsLoadImplCopyWith<_$TaskDetailsLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDetailsSetImplCopyWith<$Res> {
  factory _$$TaskDetailsSetImplCopyWith(_$TaskDetailsSetImpl value,
          $Res Function(_$TaskDetailsSetImpl) then) =
      __$$TaskDetailsSetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel task});

  $TaskModelCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskDetailsSetImplCopyWithImpl<$Res>
    extends _$TaskDetailsEventCopyWithImpl<$Res, _$TaskDetailsSetImpl>
    implements _$$TaskDetailsSetImplCopyWith<$Res> {
  __$$TaskDetailsSetImplCopyWithImpl(
      _$TaskDetailsSetImpl _value, $Res Function(_$TaskDetailsSetImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TaskDetailsSetImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }

  /// Create a copy of TaskDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res> get task {
    return $TaskModelCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$TaskDetailsSetImpl implements TaskDetailsSet {
  const _$TaskDetailsSetImpl({required this.task});

  @override
  final TaskModel task;

  @override
  String toString() {
    return 'TaskDetailsEvent.set(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailsSetImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of TaskDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDetailsSetImplCopyWith<_$TaskDetailsSetImpl> get copyWith =>
      __$$TaskDetailsSetImplCopyWithImpl<_$TaskDetailsSetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) load,
    required TResult Function(TaskModel task) set,
    required TResult Function() delete,
    required TResult Function() startOver,
  }) {
    return set(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? load,
    TResult? Function(TaskModel task)? set,
    TResult? Function()? delete,
    TResult? Function()? startOver,
  }) {
    return set?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? load,
    TResult Function(TaskModel task)? set,
    TResult Function()? delete,
    TResult Function()? startOver,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailsLoad value) load,
    required TResult Function(TaskDetailsSet value) set,
    required TResult Function(TaskDetailsDelete value) delete,
    required TResult Function(TaskDetailsStartOver value) startOver,
  }) {
    return set(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailsLoad value)? load,
    TResult? Function(TaskDetailsSet value)? set,
    TResult? Function(TaskDetailsDelete value)? delete,
    TResult? Function(TaskDetailsStartOver value)? startOver,
  }) {
    return set?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailsLoad value)? load,
    TResult Function(TaskDetailsSet value)? set,
    TResult Function(TaskDetailsDelete value)? delete,
    TResult Function(TaskDetailsStartOver value)? startOver,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(this);
    }
    return orElse();
  }
}

abstract class TaskDetailsSet implements TaskDetailsEvent {
  const factory TaskDetailsSet({required final TaskModel task}) =
      _$TaskDetailsSetImpl;

  TaskModel get task;

  /// Create a copy of TaskDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskDetailsSetImplCopyWith<_$TaskDetailsSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDetailsDeleteImplCopyWith<$Res> {
  factory _$$TaskDetailsDeleteImplCopyWith(_$TaskDetailsDeleteImpl value,
          $Res Function(_$TaskDetailsDeleteImpl) then) =
      __$$TaskDetailsDeleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskDetailsDeleteImplCopyWithImpl<$Res>
    extends _$TaskDetailsEventCopyWithImpl<$Res, _$TaskDetailsDeleteImpl>
    implements _$$TaskDetailsDeleteImplCopyWith<$Res> {
  __$$TaskDetailsDeleteImplCopyWithImpl(_$TaskDetailsDeleteImpl _value,
      $Res Function(_$TaskDetailsDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskDetailsDeleteImpl implements TaskDetailsDelete {
  const _$TaskDetailsDeleteImpl();

  @override
  String toString() {
    return 'TaskDetailsEvent.delete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskDetailsDeleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) load,
    required TResult Function(TaskModel task) set,
    required TResult Function() delete,
    required TResult Function() startOver,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? load,
    TResult? Function(TaskModel task)? set,
    TResult? Function()? delete,
    TResult? Function()? startOver,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? load,
    TResult Function(TaskModel task)? set,
    TResult Function()? delete,
    TResult Function()? startOver,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailsLoad value) load,
    required TResult Function(TaskDetailsSet value) set,
    required TResult Function(TaskDetailsDelete value) delete,
    required TResult Function(TaskDetailsStartOver value) startOver,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailsLoad value)? load,
    TResult? Function(TaskDetailsSet value)? set,
    TResult? Function(TaskDetailsDelete value)? delete,
    TResult? Function(TaskDetailsStartOver value)? startOver,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailsLoad value)? load,
    TResult Function(TaskDetailsSet value)? set,
    TResult Function(TaskDetailsDelete value)? delete,
    TResult Function(TaskDetailsStartOver value)? startOver,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class TaskDetailsDelete implements TaskDetailsEvent {
  const factory TaskDetailsDelete() = _$TaskDetailsDeleteImpl;
}

/// @nodoc
abstract class _$$TaskDetailsStartOverImplCopyWith<$Res> {
  factory _$$TaskDetailsStartOverImplCopyWith(_$TaskDetailsStartOverImpl value,
          $Res Function(_$TaskDetailsStartOverImpl) then) =
      __$$TaskDetailsStartOverImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskDetailsStartOverImplCopyWithImpl<$Res>
    extends _$TaskDetailsEventCopyWithImpl<$Res, _$TaskDetailsStartOverImpl>
    implements _$$TaskDetailsStartOverImplCopyWith<$Res> {
  __$$TaskDetailsStartOverImplCopyWithImpl(_$TaskDetailsStartOverImpl _value,
      $Res Function(_$TaskDetailsStartOverImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskDetailsStartOverImpl implements TaskDetailsStartOver {
  const _$TaskDetailsStartOverImpl();

  @override
  String toString() {
    return 'TaskDetailsEvent.startOver()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailsStartOverImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int taskId) load,
    required TResult Function(TaskModel task) set,
    required TResult Function() delete,
    required TResult Function() startOver,
  }) {
    return startOver();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int taskId)? load,
    TResult? Function(TaskModel task)? set,
    TResult? Function()? delete,
    TResult? Function()? startOver,
  }) {
    return startOver?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int taskId)? load,
    TResult Function(TaskModel task)? set,
    TResult Function()? delete,
    TResult Function()? startOver,
    required TResult orElse(),
  }) {
    if (startOver != null) {
      return startOver();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailsLoad value) load,
    required TResult Function(TaskDetailsSet value) set,
    required TResult Function(TaskDetailsDelete value) delete,
    required TResult Function(TaskDetailsStartOver value) startOver,
  }) {
    return startOver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailsLoad value)? load,
    TResult? Function(TaskDetailsSet value)? set,
    TResult? Function(TaskDetailsDelete value)? delete,
    TResult? Function(TaskDetailsStartOver value)? startOver,
  }) {
    return startOver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailsLoad value)? load,
    TResult Function(TaskDetailsSet value)? set,
    TResult Function(TaskDetailsDelete value)? delete,
    TResult Function(TaskDetailsStartOver value)? startOver,
    required TResult orElse(),
  }) {
    if (startOver != null) {
      return startOver(this);
    }
    return orElse();
  }
}

abstract class TaskDetailsStartOver implements TaskDetailsEvent {
  const factory TaskDetailsStartOver() = _$TaskDetailsStartOverImpl;
}

/// @nodoc
mixin _$TaskDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TaskModel task) loaded,
    required TResult Function() deleted,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TaskModel task)? loaded,
    TResult? Function()? deleted,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TaskModel task)? loaded,
    TResult Function()? deleted,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailsInitial value) initial,
    required TResult Function(TaskDetailsLoading value) loading,
    required TResult Function(TaskDetailsLoaded value) loaded,
    required TResult Function(TaskDetailsDeleted value) deleted,
    required TResult Function(TaskDetailsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailsInitial value)? initial,
    TResult? Function(TaskDetailsLoading value)? loading,
    TResult? Function(TaskDetailsLoaded value)? loaded,
    TResult? Function(TaskDetailsDeleted value)? deleted,
    TResult? Function(TaskDetailsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailsInitial value)? initial,
    TResult Function(TaskDetailsLoading value)? loading,
    TResult Function(TaskDetailsLoaded value)? loaded,
    TResult Function(TaskDetailsDeleted value)? deleted,
    TResult Function(TaskDetailsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDetailsStateCopyWith<$Res> {
  factory $TaskDetailsStateCopyWith(
          TaskDetailsState value, $Res Function(TaskDetailsState) then) =
      _$TaskDetailsStateCopyWithImpl<$Res, TaskDetailsState>;
}

/// @nodoc
class _$TaskDetailsStateCopyWithImpl<$Res, $Val extends TaskDetailsState>
    implements $TaskDetailsStateCopyWith<$Res> {
  _$TaskDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TaskDetailsInitialImplCopyWith<$Res> {
  factory _$$TaskDetailsInitialImplCopyWith(_$TaskDetailsInitialImpl value,
          $Res Function(_$TaskDetailsInitialImpl) then) =
      __$$TaskDetailsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskDetailsInitialImplCopyWithImpl<$Res>
    extends _$TaskDetailsStateCopyWithImpl<$Res, _$TaskDetailsInitialImpl>
    implements _$$TaskDetailsInitialImplCopyWith<$Res> {
  __$$TaskDetailsInitialImplCopyWithImpl(_$TaskDetailsInitialImpl _value,
      $Res Function(_$TaskDetailsInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskDetailsInitialImpl implements TaskDetailsInitial {
  const _$TaskDetailsInitialImpl();

  @override
  String toString() {
    return 'TaskDetailsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskDetailsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TaskModel task) loaded,
    required TResult Function() deleted,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TaskModel task)? loaded,
    TResult? Function()? deleted,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TaskModel task)? loaded,
    TResult Function()? deleted,
    TResult Function()? error,
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
    required TResult Function(TaskDetailsInitial value) initial,
    required TResult Function(TaskDetailsLoading value) loading,
    required TResult Function(TaskDetailsLoaded value) loaded,
    required TResult Function(TaskDetailsDeleted value) deleted,
    required TResult Function(TaskDetailsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailsInitial value)? initial,
    TResult? Function(TaskDetailsLoading value)? loading,
    TResult? Function(TaskDetailsLoaded value)? loaded,
    TResult? Function(TaskDetailsDeleted value)? deleted,
    TResult? Function(TaskDetailsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailsInitial value)? initial,
    TResult Function(TaskDetailsLoading value)? loading,
    TResult Function(TaskDetailsLoaded value)? loaded,
    TResult Function(TaskDetailsDeleted value)? deleted,
    TResult Function(TaskDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TaskDetailsInitial implements TaskDetailsState {
  const factory TaskDetailsInitial() = _$TaskDetailsInitialImpl;
}

/// @nodoc
abstract class _$$TaskDetailsLoadingImplCopyWith<$Res> {
  factory _$$TaskDetailsLoadingImplCopyWith(_$TaskDetailsLoadingImpl value,
          $Res Function(_$TaskDetailsLoadingImpl) then) =
      __$$TaskDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskDetailsLoadingImplCopyWithImpl<$Res>
    extends _$TaskDetailsStateCopyWithImpl<$Res, _$TaskDetailsLoadingImpl>
    implements _$$TaskDetailsLoadingImplCopyWith<$Res> {
  __$$TaskDetailsLoadingImplCopyWithImpl(_$TaskDetailsLoadingImpl _value,
      $Res Function(_$TaskDetailsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskDetailsLoadingImpl implements TaskDetailsLoading {
  const _$TaskDetailsLoadingImpl();

  @override
  String toString() {
    return 'TaskDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TaskModel task) loaded,
    required TResult Function() deleted,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TaskModel task)? loaded,
    TResult? Function()? deleted,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TaskModel task)? loaded,
    TResult Function()? deleted,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailsInitial value) initial,
    required TResult Function(TaskDetailsLoading value) loading,
    required TResult Function(TaskDetailsLoaded value) loaded,
    required TResult Function(TaskDetailsDeleted value) deleted,
    required TResult Function(TaskDetailsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailsInitial value)? initial,
    TResult? Function(TaskDetailsLoading value)? loading,
    TResult? Function(TaskDetailsLoaded value)? loaded,
    TResult? Function(TaskDetailsDeleted value)? deleted,
    TResult? Function(TaskDetailsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailsInitial value)? initial,
    TResult Function(TaskDetailsLoading value)? loading,
    TResult Function(TaskDetailsLoaded value)? loaded,
    TResult Function(TaskDetailsDeleted value)? deleted,
    TResult Function(TaskDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TaskDetailsLoading implements TaskDetailsState {
  const factory TaskDetailsLoading() = _$TaskDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$TaskDetailsLoadedImplCopyWith<$Res> {
  factory _$$TaskDetailsLoadedImplCopyWith(_$TaskDetailsLoadedImpl value,
          $Res Function(_$TaskDetailsLoadedImpl) then) =
      __$$TaskDetailsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel task});

  $TaskModelCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskDetailsLoadedImplCopyWithImpl<$Res>
    extends _$TaskDetailsStateCopyWithImpl<$Res, _$TaskDetailsLoadedImpl>
    implements _$$TaskDetailsLoadedImplCopyWith<$Res> {
  __$$TaskDetailsLoadedImplCopyWithImpl(_$TaskDetailsLoadedImpl _value,
      $Res Function(_$TaskDetailsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TaskDetailsLoadedImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }

  /// Create a copy of TaskDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res> get task {
    return $TaskModelCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$TaskDetailsLoadedImpl implements TaskDetailsLoaded {
  const _$TaskDetailsLoadedImpl({required this.task});

  @override
  final TaskModel task;

  @override
  String toString() {
    return 'TaskDetailsState.loaded(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailsLoadedImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of TaskDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDetailsLoadedImplCopyWith<_$TaskDetailsLoadedImpl> get copyWith =>
      __$$TaskDetailsLoadedImplCopyWithImpl<_$TaskDetailsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TaskModel task) loaded,
    required TResult Function() deleted,
    required TResult Function() error,
  }) {
    return loaded(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TaskModel task)? loaded,
    TResult? Function()? deleted,
    TResult? Function()? error,
  }) {
    return loaded?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TaskModel task)? loaded,
    TResult Function()? deleted,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailsInitial value) initial,
    required TResult Function(TaskDetailsLoading value) loading,
    required TResult Function(TaskDetailsLoaded value) loaded,
    required TResult Function(TaskDetailsDeleted value) deleted,
    required TResult Function(TaskDetailsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailsInitial value)? initial,
    TResult? Function(TaskDetailsLoading value)? loading,
    TResult? Function(TaskDetailsLoaded value)? loaded,
    TResult? Function(TaskDetailsDeleted value)? deleted,
    TResult? Function(TaskDetailsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailsInitial value)? initial,
    TResult Function(TaskDetailsLoading value)? loading,
    TResult Function(TaskDetailsLoaded value)? loaded,
    TResult Function(TaskDetailsDeleted value)? deleted,
    TResult Function(TaskDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TaskDetailsLoaded implements TaskDetailsState {
  const factory TaskDetailsLoaded({required final TaskModel task}) =
      _$TaskDetailsLoadedImpl;

  TaskModel get task;

  /// Create a copy of TaskDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskDetailsLoadedImplCopyWith<_$TaskDetailsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDetailsDeletedImplCopyWith<$Res> {
  factory _$$TaskDetailsDeletedImplCopyWith(_$TaskDetailsDeletedImpl value,
          $Res Function(_$TaskDetailsDeletedImpl) then) =
      __$$TaskDetailsDeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskDetailsDeletedImplCopyWithImpl<$Res>
    extends _$TaskDetailsStateCopyWithImpl<$Res, _$TaskDetailsDeletedImpl>
    implements _$$TaskDetailsDeletedImplCopyWith<$Res> {
  __$$TaskDetailsDeletedImplCopyWithImpl(_$TaskDetailsDeletedImpl _value,
      $Res Function(_$TaskDetailsDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskDetailsDeletedImpl implements TaskDetailsDeleted {
  const _$TaskDetailsDeletedImpl();

  @override
  String toString() {
    return 'TaskDetailsState.deleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskDetailsDeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TaskModel task) loaded,
    required TResult Function() deleted,
    required TResult Function() error,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TaskModel task)? loaded,
    TResult? Function()? deleted,
    TResult? Function()? error,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TaskModel task)? loaded,
    TResult Function()? deleted,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailsInitial value) initial,
    required TResult Function(TaskDetailsLoading value) loading,
    required TResult Function(TaskDetailsLoaded value) loaded,
    required TResult Function(TaskDetailsDeleted value) deleted,
    required TResult Function(TaskDetailsError value) error,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailsInitial value)? initial,
    TResult? Function(TaskDetailsLoading value)? loading,
    TResult? Function(TaskDetailsLoaded value)? loaded,
    TResult? Function(TaskDetailsDeleted value)? deleted,
    TResult? Function(TaskDetailsError value)? error,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailsInitial value)? initial,
    TResult Function(TaskDetailsLoading value)? loading,
    TResult Function(TaskDetailsLoaded value)? loaded,
    TResult Function(TaskDetailsDeleted value)? deleted,
    TResult Function(TaskDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class TaskDetailsDeleted implements TaskDetailsState {
  const factory TaskDetailsDeleted() = _$TaskDetailsDeletedImpl;
}

/// @nodoc
abstract class _$$TaskDetailsErrorImplCopyWith<$Res> {
  factory _$$TaskDetailsErrorImplCopyWith(_$TaskDetailsErrorImpl value,
          $Res Function(_$TaskDetailsErrorImpl) then) =
      __$$TaskDetailsErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskDetailsErrorImplCopyWithImpl<$Res>
    extends _$TaskDetailsStateCopyWithImpl<$Res, _$TaskDetailsErrorImpl>
    implements _$$TaskDetailsErrorImplCopyWith<$Res> {
  __$$TaskDetailsErrorImplCopyWithImpl(_$TaskDetailsErrorImpl _value,
      $Res Function(_$TaskDetailsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskDetailsErrorImpl implements TaskDetailsError {
  const _$TaskDetailsErrorImpl();

  @override
  String toString() {
    return 'TaskDetailsState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskDetailsErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TaskModel task) loaded,
    required TResult Function() deleted,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TaskModel task)? loaded,
    TResult? Function()? deleted,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TaskModel task)? loaded,
    TResult Function()? deleted,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailsInitial value) initial,
    required TResult Function(TaskDetailsLoading value) loading,
    required TResult Function(TaskDetailsLoaded value) loaded,
    required TResult Function(TaskDetailsDeleted value) deleted,
    required TResult Function(TaskDetailsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailsInitial value)? initial,
    TResult? Function(TaskDetailsLoading value)? loading,
    TResult? Function(TaskDetailsLoaded value)? loaded,
    TResult? Function(TaskDetailsDeleted value)? deleted,
    TResult? Function(TaskDetailsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailsInitial value)? initial,
    TResult Function(TaskDetailsLoading value)? loading,
    TResult Function(TaskDetailsLoaded value)? loaded,
    TResult Function(TaskDetailsDeleted value)? deleted,
    TResult Function(TaskDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TaskDetailsError implements TaskDetailsState {
  const factory TaskDetailsError() = _$TaskDetailsErrorImpl;
}
