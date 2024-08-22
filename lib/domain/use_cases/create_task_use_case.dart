import 'package:injectable/injectable.dart';
import 'package:pomotask/domain/constants/task_priority.dart';
import 'package:pomotask/domain/models/task_model.dart';
import 'package:pomotask/domain/repositories/tasks_repository.dart';

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
