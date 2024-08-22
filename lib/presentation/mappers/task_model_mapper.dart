import 'package:injectable/injectable.dart';
import 'package:pomotask/domain/models/task_model.dart';
import 'package:pomotask/domain/use_cases/get_est_pomodoro_duration_use_case.dart';
import 'package:pomotask/presentation/view_models/task_view_model.dart';

@singleton
class TaskModelMapper {
  const TaskModelMapper(this._getEstPomodoroDurationUseCase);

  final GetEstPomodoroDurationUseCase _getEstPomodoroDurationUseCase;

  Future<TaskViewModel> mapToViewModel(
    TaskModel model, {
    int pomodoroOffset = 0,
    bool static = false,
  }) async =>
      TaskViewModel(
        id: model.id,
        title: model.title,
        description: model.description,
        priority: model.priority,
        pomodoroCount: model.pomodoroCount,
        pomodoroPassed: model.pomodoroPassed,
        completed: model.completed,
        shortBreaksPassed: model.shortBreaksPassed,
        longBreaksPassed: model.longBreaksPassed,
        remainingTime: await _getEstPomodoroDurationUseCase(
          static: static,
          pomodoroCount: model.pomodoroCount,
          pomodoroPassed: model.pomodoroPassed,
          shortBreaksPassed: model.shortBreaksPassed,
          longBreaksPassed: model.longBreaksPassed,
          pomodoroOffset: pomodoroOffset,
        ),
      );

  Future<List<TaskViewModel>> mapToViewModels(List<TaskModel> models, {
    bool static = false,
  }) =>
      Future.wait(models.map((e) => mapToViewModel(e, static: static)));

  Future<TaskViewModel?> mapToViewModelOrNull(
    TaskModel? model, {
    int pomodoroOffset = 0,
    bool static = false,
  }) =>
      model == null
          ? Future.value()
          : mapToViewModel(
              model,
              pomodoroOffset: pomodoroOffset,
              static: static,
            );
}
