import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pomodoro/domain/constants/task_priority.dart';
import 'package:pomodoro/domain/models/task_model.dart';
import 'package:pomodoro/domain/use_cases/create_task_use_case.dart';
import 'package:pomodoro/domain/use_cases/get_est_pomodoro_duration_use_case.dart';
import 'package:pomodoro/domain/use_cases/get_task_use_case.dart';
import 'package:pomodoro/domain/use_cases/update_task_use_case.dart';
import 'package:pomodoro/presentation/constants/operation_status.dart';

part 'create_task_event.dart';
part 'create_task_state.dart';
part 'create_task_bloc.freezed.dart';

@injectable
class CreateTaskBloc extends Bloc<CreateTaskEvent, CreateTaskState> {
  CreateTaskBloc(
    this._createTaskUseCase,
    this._getEstPomodoroDurationUseCase,
    this._getTaskUseCase,
    this._updateTaskUseCase,
  ) : super(const CreateTaskState()) {
    on<CreateTaskLoad>(_load);
    on<CreateTaskSetTitle>(_setTitle);
    on<CreateTaskSetDescription>(_setDescription);
    on<CreateTaskSetPriority>(_setPriority);
    on<CreateTaskSetPomodoroCount>(_setPomodoroCount);
    on<CreateTaskIncreasePomodoroCount>(_increasePomodoroCount);
    on<CreateTaskDecreasePomodoroCount>(_decreasePomodoroCount);
    on<CreateTaskPerform>(_perform);
    on<CreateTaskUpdateEstPomodoroDuration>(_updateEstPomodoroDuration);

    add(const CreateTaskEvent.updateEstPomodoroDuration());
  }

  final CreateTaskUseCase _createTaskUseCase;
  final GetEstPomodoroDurationUseCase _getEstPomodoroDurationUseCase;
  final GetTaskUseCase _getTaskUseCase;
  final UpdateTaskUseCase _updateTaskUseCase;

  Future<void> _load(
    CreateTaskLoad event,
    Emitter<CreateTaskState> emit,
  ) async {
    try {
      final task = await _getTaskUseCase(taskId: event.taskId);
      if (task == null) {
        throw StateError('Task not found');
      }

      emit(
        state.copyWith(
          task: task,
          title: task.title,
          description: task.description,
          priority: task.priority,
          pomodoroCount: task.pomodoroCount,
          estPomodoroDuration: await _getEstPomodoroDurationUseCase(
            pomodoroCount: task.pomodoroCount,
            static: true,
          ),
        ),
      );
    } catch (_, __) {
      // TODO
      rethrow;
    }
  }

  void _setTitle(CreateTaskSetTitle event, Emitter<CreateTaskState> emit) =>
      emit(state.copyWith(title: event.title));

  void _setDescription(
    CreateTaskSetDescription event,
    Emitter<CreateTaskState> emit,
  ) =>
      emit(state.copyWith(description: event.description));

  void _setPriority(
    CreateTaskSetPriority event,
    Emitter<CreateTaskState> emit,
  ) =>
      emit(state.copyWith(priority: event.priority));

  void _setPomodoroCount(
    CreateTaskSetPomodoroCount event,
    Emitter<CreateTaskState> emit,
  ) =>
      emit(state.copyWith(pomodoroCount: event.pomodoroCount));

  Future<void> _increasePomodoroCount(
    CreateTaskIncreasePomodoroCount event,
    Emitter<CreateTaskState> emit,
  ) async {
    final clampPomodoroCount = _clampPomodoroCount(state.pomodoroCount + 1);
    emit(
      state.copyWith(
        pomodoroCount: clampPomodoroCount,
        estPomodoroDuration: await _getEstPomodoroDurationUseCase(
          pomodoroCount: clampPomodoroCount,
          static: true,
        ),
      ),
    );
  }

  Future<void> _decreasePomodoroCount(
    CreateTaskDecreasePomodoroCount event,
    Emitter<CreateTaskState> emit,
  ) async {
    final clampPomodoroCount = _clampPomodoroCount(state.pomodoroCount - 1);
    emit(
      state.copyWith(
        pomodoroCount: clampPomodoroCount,
        estPomodoroDuration: await _getEstPomodoroDurationUseCase(
          pomodoroCount: clampPomodoroCount,
          static: true,
        ),
      ),
    );
  }

  int _clampPomodoroCount(int pomodoroCount) => pomodoroCount.clamp(1, 99);

  Future<void> _perform(
    CreateTaskPerform event,
    Emitter<CreateTaskState> emit,
  ) async {
    try {
      emit(state.copyWith(status: OperationStatus.loading));
      if (state.task == null) {
        await _createTaskUseCase(
          title: state.title,
          description: state.description,
          priority: state.priority,
          pomodoroCount: state.pomodoroCount,
        );
      } else {
        await _updateTaskUseCase(
          taskId: state.task!.id,
          title: state.title,
          description: state.description,
          priority: state.priority,
          pomodoroCount: state.pomodoroCount,
          pomodoroPassed: state.task!.pomodoroPassed,
          shortBreaksPassed: state.task!.shortBreaksPassed,
          longBreaksPassed: state.task!.longBreaksPassed,
          completed: state.task!.completed,
        );
      }
      emit(state.copyWith(status: OperationStatus.success));
    } catch (_, __) {
      emit(state.copyWith(status: OperationStatus.error));
      // TODO
      rethrow;
    }
  }

  Future<void> _updateEstPomodoroDuration(
    CreateTaskUpdateEstPomodoroDuration event,
    Emitter<CreateTaskState> emit,
  ) async {
    try {
      final estPomodoroDuration = await _getEstPomodoroDurationUseCase(
        pomodoroCount: state.pomodoroCount,
        static: true,
      );

      emit(state.copyWith(estPomodoroDuration: estPomodoroDuration));
    } catch (_, __) {
      // TODO
      rethrow;
    }
  }
}
