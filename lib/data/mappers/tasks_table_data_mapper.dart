import 'package:pomotask/data/app_db.dart';
import 'package:pomotask/domain/models/task_model.dart';

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
