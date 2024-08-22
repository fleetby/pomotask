import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pomotask/domain/constants/task_priority.dart';

part 'task_model.freezed.dart';

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    required int id,
    required String title,
    required String description,
    required TaskPriority priority,
    required int pomodoroCount,
    required int pomodoroPassed,
    required int shortBreaksPassed,
    required int longBreaksPassed,
    required bool completed,
  }) = _TaskModel;
}
