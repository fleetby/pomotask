import 'package:injectable/injectable.dart';
import 'package:pomotask/domain/models/task_model.dart';
import 'package:pomotask/domain/repositories/tasks_repository.dart';

@singleton
class GetTaskStreamUseCase {
  const GetTaskStreamUseCase(this._tasksRepository);

  final TasksRepository _tasksRepository;

  Stream<TaskModel?> call({required int taskId}) =>
      _tasksRepository.getTaskStream(taskId: taskId);
}
