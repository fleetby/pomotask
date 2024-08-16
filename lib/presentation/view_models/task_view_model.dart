import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pomodoro/domain/constants/task_priority.dart';

part 'task_view_model.freezed.dart';

@freezed
class TaskViewModel with _$TaskViewModel {
  const factory TaskViewModel({
    required int id,
    required String title,
    required String description,
    required TaskPriority priority,
    required int pomodoroCount,
    required int pomodoroPassed,
    required int shortBreaksPassed,
    required int longBreaksPassed,
    required bool completed,
    required Duration remainingTime,
  }) = _TaskViewModel;
}
