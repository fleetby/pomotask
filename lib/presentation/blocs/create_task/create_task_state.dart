part of 'create_task_bloc.dart';

@freezed
class CreateTaskState with _$CreateTaskState {
  const factory CreateTaskState({
    TaskModel? task,
    @Default('')
    String title,
    @Default('')
    String description,
    @Default(TaskPriority.low)
    TaskPriority priority,
    @Default(1)
    int pomodoroCount,
    @Default(OperationStatus.initial)
    OperationStatus status,
    @Default(Duration.zero)
    Duration estPomodoroDuration,
  }) = _CreateTaskState;
}
