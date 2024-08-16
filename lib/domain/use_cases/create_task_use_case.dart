import 'package:injectable/injectable.dart';
import 'package:pomodoro/domain/constants/task_priority.dart';
import 'package:pomodoro/domain/models/task_model.dart';
import 'package:pomodoro/domain/repositories/tasks_repository.dart';

@singleton
class CreateTaskUseCase {
  const CreateTaskUseCase(this._tasksRepository);

  final TasksRepository _tasksRepository;

  Future<TaskModel> call({
    required String title,
    required String description,
    required TaskPriority priority,
    required int pomodoroCount,
    int pomodoroPassed = 0,
  }) async =>
      _tasksRepository.createTask(
        title: title,
        description: description,
        priority: priority,
        pomodoroCount: pomodoroCount,
        pomodoroPassed: pomodoroPassed,
      );
}
