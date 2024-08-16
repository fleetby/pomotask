import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pomodoro/domain/models/task_model.dart';
import 'package:pomodoro/domain/use_cases/delete_task_use_case.dart';
import 'package:pomodoro/domain/use_cases/get_task_stream_use_case.dart';
import 'package:pomodoro/domain/use_cases/update_task_use_case.dart';

part 'task_details_event.dart';
part 'task_details_state.dart';
part 'task_details_bloc.freezed.dart';

@injectable
class TaskDetailsBloc extends Bloc<TaskDetailsEvent, TaskDetailsState> {
  TaskDetailsBloc(
    this._deleteTaskUseCase,
    this._getTaskStreamUseCase,
    this._updateTaskUseCase,
  ) : super(const TaskDetailsState.initial()) {
    on<TaskDetailsLoad>(_load);
    on<TaskDetailsDelete>(_delete);
    on<TaskDetailsStartOver>(_startOver);
  }

  final DeleteTaskUseCase _deleteTaskUseCase;
  final GetTaskStreamUseCase _getTaskStreamUseCase;
  final UpdateTaskUseCase _updateTaskUseCase;

  StreamSubscription<TaskModel?>? _taskStreamSubscription;

  Future<void> _load(
    TaskDetailsLoad event,
    Emitter<TaskDetailsState> emit,
  ) async {
    try {
      await _taskStreamSubscription?.cancel();
      emit(const TaskDetailsState.loading());
      _taskStreamSubscription =
          _getTaskStreamUseCase(taskId: event.taskId).listen((task) {
        if (task != null) {
          emit(TaskDetailsState.loaded(task: task));
        } else {
          emit(const TaskDetailsState.deleted());
        }
      });
      await _taskStreamSubscription!.asFuture<void>();
    } catch (_, __) {
      emit(const TaskDetailsState.error());
      // TODO
      rethrow;
    }
  }

  Future<void> _delete(
    TaskDetailsDelete event,
    Emitter<TaskDetailsState> emit,
  ) async {
    try {
      final taskId = state.mapOrNull(loaded: (state) => state.task.id);
      if (taskId == null) {
        throw StateError('Task id is null');
      }

      await _deleteTaskUseCase(taskId: taskId);
      emit(const TaskDetailsState.deleted());
    } catch (_, __) {
      emit(const TaskDetailsState.error());
      // TODO
      rethrow;
    }
  }

  Future<void> _startOver(
    TaskDetailsStartOver event,
    Emitter<TaskDetailsState> emit,
  ) async {
    try {
      final task = state.mapOrNull(loaded: (state) => state.task);
      if (task == null) {
        throw StateError('Task is null');
      }

      await _updateTaskUseCase(
        taskId: task.id,
        completed: false,
        pomodoroPassed: 0,
        shortBreaksPassed: 0,
        longBreaksPassed: 0,
      );
    } catch (_, __) {
      // TODO
      rethrow;
    }
  }

  @override
  Future<void> close() {
    _taskStreamSubscription?.cancel();
    return super.close();
  }
}
