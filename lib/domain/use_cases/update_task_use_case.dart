import 'package:injectable/injectable.dart';
import 'package:pomotask/domain/constants/task_priority.dart';
import 'package:pomotask/domain/repositories/tasks_repository.dart';

@singleton
class UpdateTaskUseCase {
  const UpdateTaskUseCase(this._tasksRepository);

  final TasksRepository _tasksRepository;

  Future<void> call({
    required int taskId,
    String? title,
    String? description,
    TaskPriority? priority,
    int? pomodoroCount,
    int? pomodoroPassed,
    int? shortBreaksPassed,
    int? longBreaksPassed,
    bool? completed,
  }) =>
      _tasksRepository.updateTask(
        taskId: taskId,
        title: title,
        description: description,
        priority: priority,
        pomodoroCount: pomodoroCount,
        pomodoroPassed: pomodoroPassed,
        shortBreaksPassed: shortBreaksPassed,
        longBreaksPassed: longBreaksPassed,
        completed: completed,
      );
}
