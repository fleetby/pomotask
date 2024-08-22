import 'package:injectable/injectable.dart';
import 'package:pomotask/domain/models/task_model.dart';
import 'package:pomotask/domain/repositories/tasks_repository.dart';

@singleton
class GetTasksStreamUseCase {
  const GetTasksStreamUseCase(this._tasksRepository);

  final TasksRepository _tasksRepository;

  Stream<List<TaskModel>> call() => _tasksRepository.getTasksStream();
}
