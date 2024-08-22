import 'package:drift/drift.dart';
import 'package:pomotask/domain/constants/task_priority.dart';

class TasksTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  IntColumn get priority => intEnum<TaskPriority>()();
  IntColumn get pomodoroCount => integer()();
  IntColumn get pomodoroPassed => integer()();
  IntColumn get shortBreaksPassed => integer()();
  IntColumn get longBreaksPassed => integer()();
  BoolColumn get completed => boolean().withDefault(const Constant(false))();
}
