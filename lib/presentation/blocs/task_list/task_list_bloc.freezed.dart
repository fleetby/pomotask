// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TaskModel> tasks) set,
    required TResult Function(int taskId) delete,
    required TResult Function() deleteCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TaskModel> tasks)? set,
    TResult? Function(int taskId)? delete,
    TResult? Function()? deleteCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskModel> tasks)? set,
    TResult Function(int taskId)? delete,
    TResult Function()? deleteCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskListSet value) set,
    required TResult Function(TaskListDelete value) delete,
    required TResult Function(TaskListDeleteCompleted value) deleteCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskListSet value)? set,
    TResult? Function(TaskListDelete value)? delete,
    TResult? Function(TaskListDeleteCompleted value)? deleteCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskListSet value)? set,
    TResult Function(TaskListDelete value)? delete,
    TResult Function(TaskListDeleteCompleted value)? deleteCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListEventCopyWith<$Res> {
  factory $TaskListEventCopyWith(
          TaskListEvent value, $Res Function(TaskListEvent) then) =
      _$TaskListEventCopyWithImpl<$Res, TaskListEvent>;
}

/// @nodoc
class _$TaskListEventCopyWithImpl<$Res, $Val extends TaskListEvent>
    implements $TaskListEventCopyWith<$Res> {
  _$TaskListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TaskListSetImplCopyWith<$Res> {
  factory _$$TaskListSetImplCopyWith(
          _$TaskListSetImpl value, $Res Function(_$TaskListSetImpl) then) =
      __$$TaskListSetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskModel> tasks});
}

/// @nodoc
class __$$TaskListSetImplCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$TaskListSetImpl>
    implements _$$TaskListSetImplCopyWith<$Res> {
  __$$TaskListSetImplCopyWithImpl(
      _$TaskListSetImpl _value, $Res Function(_$TaskListSetImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$TaskListSetImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ));
  }
}

/// @nodoc

class _$TaskListSetImpl implements TaskListSet {
  const _$TaskListSetImpl({required final List<TaskModel> tasks})
      : _tasks = tasks;

  final List<TaskModel> _tasks;
  @override
  List<TaskModel> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskListEvent.set(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListSetImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskListSetImplCopyWith<_$TaskListSetImpl> get copyWith =>
      __$$TaskListSetImplCopyWithImpl<_$TaskListSetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TaskModel> tasks) set,
    required TResult Function(int taskId) delete,
    required TResult Function() deleteCompleted,
  }) {
    return set(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TaskModel> tasks)? set,
    TResult? Function(int taskId)? delete,
    TResult? Function()? deleteCompleted,
  }) {
    return set?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskModel> tasks)? set,
    TResult Function(int taskId)? delete,
    TResult Function()? deleteCompleted,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskListSet value) set,
    required TResult Function(TaskListDelete value) delete,
    required TResult Function(TaskListDeleteCompleted value) deleteCompleted,
  }) {
    return set(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskListSet value)? set,
    TResult? Function(TaskListDelete value)? delete,
    TResult? Function(TaskListDeleteCompleted value)? deleteCompleted,
  }) {
    return set?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskListSet value)? set,
    TResult Function(TaskListDelete value)? delete,
    TResult Function(TaskListDeleteCompleted value)? deleteCompleted,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(this);
    }
    return orElse();
  }
}

abstract class TaskListSet implements TaskListEvent {
  const factory TaskListSet({required final List<TaskModel> tasks}) =
      _$TaskListSetImpl;

  List<TaskModel> get tasks;

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskListSetImplCopyWith<_$TaskListSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskListDeleteImplCopyWith<$Res> {
  factory _$$TaskListDeleteImplCopyWith(_$TaskListDeleteImpl value,
          $Res Function(_$TaskListDeleteImpl) then) =
      __$$TaskListDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int taskId});
}

/// @nodoc
class __$$TaskListDeleteImplCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$TaskListDeleteImpl>
    implements _$$TaskListDeleteImplCopyWith<$Res> {
  __$$TaskListDeleteImplCopyWithImpl(
      _$TaskListDeleteImpl _value, $Res Function(_$TaskListDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$TaskListDeleteImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TaskListDeleteImpl implements TaskListDelete {
  const _$TaskListDeleteImpl({required this.taskId});

  @override
  final int taskId;

  @override
  String toString() {
    return 'TaskListEvent.delete(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListDeleteImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskListDeleteImplCopyWith<_$TaskListDeleteImpl> get copyWith =>
      __$$TaskListDeleteImplCopyWithImpl<_$TaskListDeleteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TaskModel> tasks) set,
    required TResult Function(int taskId) delete,
    required TResult Function() deleteCompleted,
  }) {
    return delete(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TaskModel> tasks)? set,
    TResult? Function(int taskId)? delete,
    TResult? Function()? deleteCompleted,
  }) {
    return delete?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskModel> tasks)? set,
    TResult Function(int taskId)? delete,
    TResult Function()? deleteCompleted,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskListSet value) set,
    required TResult Function(TaskListDelete value) delete,
    required TResult Function(TaskListDeleteCompleted value) deleteCompleted,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskListSet value)? set,
    TResult? Function(TaskListDelete value)? delete,
    TResult? Function(TaskListDeleteCompleted value)? deleteCompleted,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskListSet value)? set,
    TResult Function(TaskListDelete value)? delete,
    TResult Function(TaskListDeleteCompleted value)? deleteCompleted,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class TaskListDelete implements TaskListEvent {
  const factory TaskListDelete({required final int taskId}) =
      _$TaskListDeleteImpl;

  int get taskId;

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskListDeleteImplCopyWith<_$TaskListDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskListDeleteCompletedImplCopyWith<$Res> {
  factory _$$TaskListDeleteCompletedImplCopyWith(
          _$TaskListDeleteCompletedImpl value,
          $Res Function(_$TaskListDeleteCompletedImpl) then) =
      __$$TaskListDeleteCompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskListDeleteCompletedImplCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$TaskListDeleteCompletedImpl>
    implements _$$TaskListDeleteCompletedImplCopyWith<$Res> {
  __$$TaskListDeleteCompletedImplCopyWithImpl(
      _$TaskListDeleteCompletedImpl _value,
      $Res Function(_$TaskListDeleteCompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskListDeleteCompletedImpl implements TaskListDeleteCompleted {
  const _$TaskListDeleteCompletedImpl();

  @override
  String toString() {
    return 'TaskListEvent.deleteCompleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListDeleteCompletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TaskModel> tasks) set,
    required TResult Function(int taskId) delete,
    required TResult Function() deleteCompleted,
  }) {
    return deleteCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TaskModel> tasks)? set,
    TResult? Function(int taskId)? delete,
    TResult? Function()? deleteCompleted,
  }) {
    return deleteCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskModel> tasks)? set,
    TResult Function(int taskId)? delete,
    TResult Function()? deleteCompleted,
    required TResult orElse(),
  }) {
    if (deleteCompleted != null) {
      return deleteCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskListSet value) set,
    required TResult Function(TaskListDelete value) delete,
    required TResult Function(TaskListDeleteCompleted value) deleteCompleted,
  }) {
    return deleteCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskListSet value)? set,
    TResult? Function(TaskListDelete value)? delete,
    TResult? Function(TaskListDeleteCompleted value)? deleteCompleted,
  }) {
    return deleteCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskListSet value)? set,
    TResult Function(TaskListDelete value)? delete,
    TResult Function(TaskListDeleteCompleted value)? deleteCompleted,
    required TResult orElse(),
  }) {
    if (deleteCompleted != null) {
      return deleteCompleted(this);
    }
    return orElse();
  }
}

abstract class TaskListDeleteCompleted implements TaskListEvent {
  const factory TaskListDeleteCompleted() = _$TaskListDeleteCompletedImpl;
}

/// @nodoc
mixin _$TaskListState {
  bool get loading => throw _privateConstructorUsedError;
  List<TaskViewModel> get tasks => throw _privateConstructorUsedError;
  int? get indexOfLastNonCompletedTask => throw _privateConstructorUsedError;

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskListStateCopyWith<TaskListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListStateCopyWith<$Res> {
  factory $TaskListStateCopyWith(
          TaskListState value, $Res Function(TaskListState) then) =
      _$TaskListStateCopyWithImpl<$Res, TaskListState>;
  @useResult
  $Res call(
      {bool loading,
      List<TaskViewModel> tasks,
      int? indexOfLastNonCompletedTask});
}

/// @nodoc
class _$TaskListStateCopyWithImpl<$Res, $Val extends TaskListState>
    implements $TaskListStateCopyWith<$Res> {
  _$TaskListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? tasks = null,
    Object? indexOfLastNonCompletedTask = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskViewModel>,
      indexOfLastNonCompletedTask: freezed == indexOfLastNonCompletedTask
          ? _value.indexOfLastNonCompletedTask
          : indexOfLastNonCompletedTask // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskListStateImplCopyWith<$Res>
    implements $TaskListStateCopyWith<$Res> {
  factory _$$TaskListStateImplCopyWith(
          _$TaskListStateImpl value, $Res Function(_$TaskListStateImpl) then) =
      __$$TaskListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      List<TaskViewModel> tasks,
      int? indexOfLastNonCompletedTask});
}

/// @nodoc
class __$$TaskListStateImplCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$TaskListStateImpl>
    implements _$$TaskListStateImplCopyWith<$Res> {
  __$$TaskListStateImplCopyWithImpl(
      _$TaskListStateImpl _value, $Res Function(_$TaskListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? tasks = null,
    Object? indexOfLastNonCompletedTask = freezed,
  }) {
    return _then(_$TaskListStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskViewModel>,
      indexOfLastNonCompletedTask: freezed == indexOfLastNonCompletedTask
          ? _value.indexOfLastNonCompletedTask
          : indexOfLastNonCompletedTask // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TaskListStateImpl implements _TaskListState {
  const _$TaskListStateImpl(
      {required this.loading,
      final List<TaskViewModel> tasks = const [],
      this.indexOfLastNonCompletedTask})
      : _tasks = tasks;

  @override
  final bool loading;
  final List<TaskViewModel> _tasks;
  @override
  @JsonKey()
  List<TaskViewModel> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final int? indexOfLastNonCompletedTask;

  @override
  String toString() {
    return 'TaskListState(loading: $loading, tasks: $tasks, indexOfLastNonCompletedTask: $indexOfLastNonCompletedTask)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.indexOfLastNonCompletedTask,
                    indexOfLastNonCompletedTask) ||
                other.indexOfLastNonCompletedTask ==
                    indexOfLastNonCompletedTask));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading,
      const DeepCollectionEquality().hash(_tasks), indexOfLastNonCompletedTask);

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskListStateImplCopyWith<_$TaskListStateImpl> get copyWith =>
      __$$TaskListStateImplCopyWithImpl<_$TaskListStateImpl>(this, _$identity);
}

abstract class _TaskListState implements TaskListState {
  const factory _TaskListState(
      {required final bool loading,
      final List<TaskViewModel> tasks,
      final int? indexOfLastNonCompletedTask}) = _$TaskListStateImpl;

  @override
  bool get loading;
  @override
  List<TaskViewModel> get tasks;
  @override
  int? get indexOfLastNonCompletedTask;

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskListStateImplCopyWith<_$TaskListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
