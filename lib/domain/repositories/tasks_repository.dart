import 'package:pomotask/domain/constants/task_priority.dart';
import 'package:pomotask/domain/models/task_model.dart';

abstract interface class TasksRepository {
  Stream<List<TaskModel>> getTasksStream();

  Future<TaskModel> createTask({
    required String title,
    required String description,
    required TaskPriority priority,
    required int pomodoroCount,
    int pomodoroPassed = 0,
  });

  Future<void> deleteTask({required int taskId});

  Stream<TaskModel?> getTaskStream({required int taskId});

  Future<TaskModel?> getTask({required int taskId});

  Future<void> updateTask({
    required int taskId,
    String? title,
    String? description,
    TaskPriority? priority,
    int? pomodoroCount,
    int? pomodoroPassed,
    int? shortBreaksPassed,
    int? longBreaksPassed,
    bool? completed,
  });

  Future<void> deleteCompletedTasks();
}
