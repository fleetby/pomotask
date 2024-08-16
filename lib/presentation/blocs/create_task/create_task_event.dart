part of 'create_task_bloc.dart';

@freezed
class CreateTaskEvent with _$CreateTaskEvent {
  const factory CreateTaskEvent.load({required int taskId}) = CreateTaskLoad;

  const factory CreateTaskEvent.setTitle(String title) = CreateTaskSetTitle;

  const factory CreateTaskEvent.setDescription(String description) =
      CreateTaskSetDescription;

  const factory CreateTaskEvent.setPriority(TaskPriority priority) =
      CreateTaskSetPriority;

  const factory CreateTaskEvent.setPomodoroCount(int pomodoroCount) =
      CreateTaskSetPomodoroCount;

  const factory CreateTaskEvent.increasePomodoroCount() =
      CreateTaskIncreasePomodoroCount;

  const factory CreateTaskEvent.decreasePomodoroCount() =
      CreateTaskDecreasePomodoroCount;

  const factory CreateTaskEvent.updateEstPomodoroDuration() =
      CreateTaskUpdateEstPomodoroDuration;

  const factory CreateTaskEvent.perform() = CreateTaskPerform;
}
