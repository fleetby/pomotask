import 'package:injectable/injectable.dart';
import 'package:pomodoro/domain/models/task_model.dart';
import 'package:pomodoro/domain/repositories/tasks_repository.dart';

@singleton
class GetTaskUseCase {
  const GetTaskUseCase(this._tasksRepository);

  final TasksRepository _tasksRepository;

  Future<TaskModel?> call({required int taskId}) =>
      _tasksRepository.getTask(taskId: taskId);
}
