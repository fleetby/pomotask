import 'package:injectable/injectable.dart';
import 'package:pomotask/domain/repositories/tasks_repository.dart';

@singleton
class DeleteCompletedTasksUseCase {
  const DeleteCompletedTasksUseCase(this._tasksRepository);

  final TasksRepository _tasksRepository;

  Future<void> call() => _tasksRepository.deleteCompletedTasks();
}
