import 'package:injectable/injectable.dart';
import 'package:pomodoro/domain/repositories/tasks_repository.dart';

@singleton
class DeleteTaskUseCase {
  const DeleteTaskUseCase(this._tasksRepository);

  final TasksRepository _tasksRepository;

  Future<void> call({required int taskId}) =>
      _tasksRepository.deleteTask(taskId: taskId);
}
