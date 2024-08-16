import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:pomodoro/data/app_db.dart';
import 'package:pomodoro/data/mappers/tasks_table_data_mapper.dart';
import 'package:pomodoro/domain/constants/task_priority.dart';
import 'package:pomodoro/domain/models/task_model.dart';
import 'package:pomodoro/domain/repositories/tasks_repository.dart';

@Singleton(as: TasksRepository)
class TasksRepositoryImpl implements TasksRepository {
  const TasksRepositoryImpl(this._db);

  final AppDb _db;

  @override
  Stream<List<TaskModel>> getTasksStream() => _db.managers.tasksTable
      .orderBy((t) => t.completed.asc() & t.priority.desc() & t.id.desc())
      .watch()
      .map((e) => e.map((e) => e.toModel()).toList());

  @override
  Future<TaskModel> createTask({
    required String title,
    required String description,
    required TaskPriority priority,
    required int pomodoroCount,
    int pomodoroPassed = 0,
    int shortBreaksPassed = 0,
    int longBreaksPassed = 0,
  }) =>
      _db.managers.tasksTable
          .createReturning(
            (b) => b(
              title: title,
              description: description,
              priority: priority,
              pomodoroCount: pomodoroCount,
              pomodoroPassed: pomodoroPassed,
              shortBreaksPassed: shortBreaksPassed,
              longBreaksPassed: longBreaksPassed,
            ),
          )
          .then((e) => e.toModel());

  @override
  Future<void> deleteTask({required int taskId}) =>
      _db.managers.tasksTable.filter((f) => f.id.equals(taskId)).delete();

  @override
  Stream<TaskModel?> getTaskStream({required int taskId}) =>
      _db.managers.tasksTable
          .filter((f) => f.id.equals(taskId))
          .watchSingleOrNull()
          .map((e) => e?.toModel());

  @override
  Future<TaskModel?> getTask({required int taskId}) => _db.managers.tasksTable
      .filter((f) => f.id.equals(taskId))
      .getSingleOrNull()
      .then((e) => e?.toModel());

  @override
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
  }) =>
      _db.managers.tasksTable.filter((f) => f.id.equals(taskId)).update(
            (u) => u(
              title: Value.absentIfNull(title),
              description: Value.absentIfNull(description),
              priority: Value.absentIfNull(priority),
              pomodoroCount: Value.absentIfNull(pomodoroCount),
              pomodoroPassed: Value.absentIfNull(pomodoroPassed),
              shortBreaksPassed: Value.absentIfNull(shortBreaksPassed),
              longBreaksPassed: Value.absentIfNull(longBreaksPassed),
              completed: Value.absentIfNull(completed),
            ),
          );

  @override
  Future<void> deleteCompletedTasks() =>
      _db.managers.tasksTable.filter((f) => f.completed.isTrue()).delete();
}
