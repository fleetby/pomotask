import 'package:injectable/injectable.dart';
import 'package:pomodoro/domain/models/task_model.dart';
import 'package:pomodoro/domain/repositories/tasks_repository.dart';

@singleton
class GetTasksStreamUseCase {
  const GetTasksStreamUseCase(this._tasksRepository);

  final TasksRepository _tasksRepository;

  Stream<List<TaskModel>> call() => _tasksRepository.getTasksStream();
}
