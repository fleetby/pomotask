import 'package:pomodoro/data/app_db.dart';
import 'package:pomodoro/domain/models/task_model.dart';

extension TasksTableDataMapper on TasksTableData {
  TaskModel toModel() => TaskModel(
        id: id,
        title: title,
        description: description,
        priority: priority,
        pomodoroCount: pomodoroCount,
        pomodoroPassed: pomodoroPassed,
        shortBreaksPassed: shortBreaksPassed,
        longBreaksPassed: longBreaksPassed,
        completed: completed,
      );
}
