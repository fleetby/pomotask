import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pomotask/domain/constants/pomodoro_timer_type.dart';
import 'package:pomotask/domain/models/task_model.dart';
import 'package:pomotask/domain/use_cases/get_next_pomodoro_timer_type_use_case.dart';
import 'package:pomotask/domain/use_cases/get_task_stream_use_case.dart';
import 'package:pomotask/domain/use_cases/update_task_use_case.dart';
import 'package:pomotask/presentation/mappers/task_model_mapper.dart';
import 'package:pomotask/presentation/view_models/task_view_model.dart';

part 'pomodoro_event.dart';
part 'pomodoro_state.dart';
part 'pomodoro_bloc.freezed.dart';

@injectable
class PomodoroBloc extends Bloc<PomodoroEvent, PomodoroState> {
  PomodoroBloc(
    this._getTaskStreamUseCase,
    this._updateTaskUseCase,
    this._getNextPomodoroTimerTypeUseCase,
    this._taskModelMapper,
  ) : super(const PomodoroState()) {
    on<PomodoroChangeTimerType>(_changeTimerType);
    on<PomodoroIncreaseTimerCount>(_increaseTimerCount);
    on<PomodoroReset>(_reset);
    on<PomodoroPinTask>(_pinTask);
  }

  final GetTaskStreamUseCase _getTaskStreamUseCase;
  final UpdateTaskUseCase _updateTaskUseCase;
  final GetNextPomodoroTimerTypeUseCase _getNextPomodoroTimerTypeUseCase;
  final TaskModelMapper _taskModelMapper;

  StreamSubscription<TaskModel?>? _taskStreamSubscription;

  Future<void> _changeTimerType(
    PomodoroChangeTimerType event,
    Emitter<PomodoroState> emit,
  ) async {
    emit(PomodoroState(timerType: event.timerType));
  }

  Future<void> _increaseTimerCount(
    PomodoroIncreaseTimerCount event,
    Emitter<PomodoroState> emit,
  ) async {
    var pinnedTaskPassedFirstPomodoro = state.pinnedTaskPassedFirstPomodoro;
    if (state.timerType == PomodoroTimerType.pomodoro &&
        state.pinnedTask != null) {
      pinnedTaskPassedFirstPomodoro = true;
    }

    var completed = false;
    if (pinnedTaskPassedFirstPomodoro && state.pinnedTask != null) {
      var pomodoroPassed = state.pinnedTask!.pomodoroPassed;
      var shortBreaksPassed = state.pinnedTask!.shortBreaksPassed;
      var longBreaksPassed = state.pinnedTask!.longBreaksPassed;
      if (state.timerType == PomodoroTimerType.pomodoro) {
        pomodoroPassed += 1;
      }
      if (state.timerType == PomodoroTimerType.shortBreak) {
        shortBreaksPassed += 1;
      }
      if (state.timerType == PomodoroTimerType.longBreak) {
        longBreaksPassed += 1;
      }
      completed = pomodoroPassed >= state.pinnedTask!.pomodoroCount;
      await _updateTaskUseCase(
        taskId: state.pinnedTask!.id,
        pomodoroPassed: pomodoroPassed,
        shortBreaksPassed: shortBreaksPassed,
        longBreaksPassed: longBreaksPassed,
        completed: completed,
      );
    }

    if (completed) {
      await _taskStreamSubscription?.cancel();
    }

    emit(
      PomodoroState(
        timerType: await _getNextPomodoroTimerTypeUseCase(
          currentTimerType: state.timerType,
          timerCount: state.timerCount,
        ),
        timerCount: {
          ...state.timerCount,
          state.timerType: state.timerCount[state.timerType]! + 1,
        },
        pinnedTask: completed ? null : state.pinnedTask,
        lastCompletedTaskId:
            completed ? state.pinnedTask!.id : state.lastCompletedTaskId,
        pinnedTaskPassedFirstPomodoro: pinnedTaskPassedFirstPomodoro,
      ),
    );
  }

  Future<void> _reset(
    PomodoroReset event,
    Emitter<PomodoroState> emit,
  ) async {
    final pinnedTask = state.pinnedTask;
    emit(const PomodoroState());
    if (pinnedTask != null) {
      add(PomodoroEvent.pinTask(taskId: pinnedTask.id));
    }
  }

  Future<void> _pinTask(
    PomodoroPinTask event,
    Emitter<PomodoroState> emit,
  ) async {
    try {
      await _taskStreamSubscription?.cancel();
      final pomodoroOffsetAtPin =
          (state.timerCount[PomodoroTimerType.pomodoro] ?? 0) - 1;
      if (event.taskId != null) {
        _taskStreamSubscription =
            _getTaskStreamUseCase(taskId: event.taskId!).listen((task) async {
          if (task == null) {
            await _taskStreamSubscription?.cancel();
          } else {
            if (!task.completed && state.lastCompletedTaskId == task.id) {
              emit(state.copyWith(lastCompletedTaskId: null));
            }
          }
          emit(
            state.copyWith(
              pinnedTask: await _taskModelMapper.mapToViewModelOrNull(
                task,
                pomodoroOffset: pomodoroOffsetAtPin,
              ),
              pinnedTaskPassedFirstPomodoro: state.pinnedTask?.id == task?.id &&
                  state.pinnedTaskPassedFirstPomodoro,
            ),
          );
        });
        await _taskStreamSubscription!.asFuture<void>();
      } else {
        emit(
          state.copyWith(
            pinnedTask: null,
            pinnedTaskPassedFirstPomodoro: false,
          ),
        );
      }
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
