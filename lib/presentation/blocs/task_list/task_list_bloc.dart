import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pomodoro/domain/models/task_model.dart';
import 'package:pomodoro/domain/use_cases/delete_completed_tasks_use_case.dart';
import 'package:pomodoro/domain/use_cases/delete_task_use_case.dart';
import 'package:pomodoro/domain/use_cases/get_tasks_stream_use_case.dart';
import 'package:pomodoro/presentation/mappers/task_model_mapper.dart';
import 'package:pomodoro/presentation/view_models/task_view_model.dart';

part 'task_list_event.dart';
part 'task_list_state.dart';
part 'task_list_bloc.freezed.dart';

@injectable
class TaskListBloc extends Bloc<TaskListEvent, TaskListState> {
  TaskListBloc(
    this._getTasksStreamUseCase,
    this._deleteTaskUseCase,
    this._deleteCompletedTasksUseCase,
    this._taskModelMapper,
  ) : super(const TaskListState(loading: true)) {
    on<TaskListSet>(_set);
    on<TaskListDelete>(_delete);
    on<TaskListDeleteCompleted>(_deleteCompleted);

    _tasksStreamSubscription = _getTasksStreamUseCase()
        .listen((tasks) => add(TaskListSet(tasks: tasks)));
  }

  final GetTasksStreamUseCase _getTasksStreamUseCase;
  final DeleteTaskUseCase _deleteTaskUseCase;
  final DeleteCompletedTasksUseCase _deleteCompletedTasksUseCase;
  final TaskModelMapper _taskModelMapper;

  late final StreamSubscription<List<TaskModel>> _tasksStreamSubscription;

  Future<void> _set(TaskListSet event, Emitter<TaskListState> emit) async {
    final viewModels = await _taskModelMapper.mapToViewModels(
      event.tasks,
      static: true,
    );
    final indexWhere = viewModels.lastIndexWhere((t) => !t.completed);
    emit(
      TaskListState(
        tasks: viewModels,
        indexOfLastNonCompletedTask: indexWhere == -1 ? null : indexWhere,
        loading: false,
      ),
    );
  }

  Future<void> _delete(
    TaskListDelete event,
    Emitter<TaskListState> emit,
  ) async {
    try {
      await _deleteTaskUseCase(taskId: event.taskId);
    } catch (_, __) {
      // TODO
      rethrow;
    }
  }

  Future<void> _deleteCompleted(
    TaskListDeleteCompleted event,
    Emitter<TaskListState> emit,
  ) async {
    try {
      await _deleteCompletedTasksUseCase();
    } catch (_, __) {
      // TODO
      rethrow;
    }
  }

  @override
  Future<void> close() {
    _tasksStreamSubscription.cancel();
    return super.close();
  }
}
